using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

[System.Serializable]
public class LPathNode
{
    public Vec2int position;
    public LPathNode parent = null;
    public int f;
    public int g;
    public int h;
    public bool inOpen = false;
    public bool inClosed = false;
    public LPathNode(Vec2int iPos, Vec2int iDest)
    {
        position = iPos;
        h = position.ManhattenDistance(iDest);
    }

    public void CalcF()
    {
        f = g + h;
    }
}

public class LPathfinding : MonoBehaviour {

    public List<LPathNode> openList = new List<LPathNode>();
    public List<LPathNode> closedList = new List<LPathNode>();
    LPathNode actualNode;

    public Vec2int start;
    public Vec2int dest;
    public int coroutineCount;

    public bool searching = false;

    public GameObject prefab;
    public GameObject prefabRed;

    public int nodesPerFrame;
    int nodeFrameCount = 0;

    LPathfindingCallback callback;
    List<LPathNode> path = new List<LPathNode>();

    public Vec2int[] LPathNodeToVec2intArray(List<LPathNode> lpnList, LPathNode[] lpnArray)
    {
        Vec2int[] temp = null;
        if(lpnList != null)
        {
            temp = new Vec2int[lpnList.Count];
            int i = 0;
            foreach(LPathNode lpn in lpnList)
            {
                temp[i] = lpn.position;
                i++;
            }
        }
        else
        {
            print("array not implemented yet, sorry");
        }
        return temp;
    }

	public void LFindPath(Vec2int iStart, Vec2int iDest, LPathfindingCallback lpfc)
    {
        prefabRed = GetComponent<EnemyAI>().pathIndicatorPrefab;
        if (searching)
            return;
        callback = lpfc;
        openList = new List<LPathNode>();
        closedList = new List<LPathNode>();

        if (WorldMapData.instance.tiles[iStart.x, iStart.y].tileType == "water")
        {
            print("Start is in water");
            return;
        }
        if (WorldMapData.instance.tiles[iDest.x, iDest.y].tileType == "water")
        {
            print("Destination is in water");
            return;
        }

        start = iStart;
        dest = iDest;
        actualNode = new LPathNode(start, dest);
        actualNode.g = 0;
        actualNode.CalcF();
        actualNode.inOpen = true;
        openList.Add(actualNode);
        nodeFrameCount = 0;
        path = new List<LPathNode>();
        StartCoroutine("LFindPathCoroutine");
    }

    

    public LPathNode LFindPathNodeInList(Vec2int nodeToFind, bool openClosed)
    {
        if(openList.Count == 0)
            return null;
        if(openClosed)
            foreach(LPathNode lpn in openList)
            {
                if(lpn.position.x == nodeToFind.x && lpn.position.y == nodeToFind.y)
                {
                    return lpn;
                }
            }
        else
            foreach (LPathNode lpn in closedList)
            {
                if (lpn.position.x == nodeToFind.x && lpn.position.y == nodeToFind.y)
                {
                    return lpn;
                }
            }
        return null;
    }


    IEnumerator LFindPathCoroutine()
    {
        searching = true;
        while (searching)
        {
            nodeFrameCount++;
            coroutineCount++;
            actualNode = openList[0];
            List<Vec2int> childPositions = WorldMapData.instance.tiles[actualNode.position.x, actualNode.position.y].AdjacentHexListPositions();

            for (int i = 0; i < childPositions.Count; i++)
            {
                LPathNode thisChildNode = LFindPathNodeInList(childPositions[i], true);
                if(thisChildNode == null)
                    thisChildNode = LFindPathNodeInList(childPositions[i], false);

                //GameObject goTemp = Instantiate(prefabRed, WorldMapData.instance.tiles[childPositions[i].x, childPositions[i].y].position, Quaternion.identity) as GameObject;
                //goTemp.transform.parent = gameObject.transform;

                if (thisChildNode == null && WorldMapData.instance.tiles[childPositions[i].x, childPositions[i].y].tileType != "water" && WorldMapData.instance.tiles[childPositions[i].x, childPositions[i].y].gameObjectList.Find(x => x.tag == "EnemyParent") == null)
                {
                    thisChildNode = new LPathNode(childPositions[i], dest);
                    thisChildNode.parent = actualNode;
                    if (thisChildNode.position.y == actualNode.position.y)
                        thisChildNode.g = actualNode.g + 1;
                    else
                        thisChildNode.g = actualNode.g + 2;
                    thisChildNode.CalcF();
                    thisChildNode.inOpen = true;
                    openList.Add(thisChildNode);
                }


            }

            actualNode.inOpen = false;
            actualNode.inClosed = true;
            openList.Remove(actualNode);

            closedList.Add(actualNode);

            List<LPathNode> temp = openList.OrderBy(o => o.h).ThenByDescending(o => o.g).ToList();
            openList = temp;

            if (actualNode.position.x == dest.x && actualNode.position.y == dest.y)
            {

                path.Add(actualNode);
                while(path[path.Count - 1].parent != null)
                {
                    nodeFrameCount++;
                    path.Add(path[path.Count - 1].parent);
                    
                    if (nodeFrameCount > nodesPerFrame)
                    {
                        nodeFrameCount = 0;
                        yield return null;
                    }
                }
                StopCoroutine("LFindPathCoroutine");
                break;
            }
            if (nodeFrameCount > nodesPerFrame)
            {
                nodeFrameCount = 0;
                yield return null;
            }
        }

        callback(LPathNodeToVec2intArray(path, null));
        searching = false;
    }

    public Vec2int[] FlipPath(Vec2int[] path)
    {
        Vec2int[] temp = new Vec2int[path.Length];
        for(int i = 0; i < path.Length; i++)
        {
            temp[i] = path[path.Length - i - 1];
        }
        return temp;
    }
}

