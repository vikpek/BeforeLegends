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
    public bool allowed;
    public bool inOpen = false;
    public bool inClosed = false;
    public LPathNode(Vec2int iPos, Vec2int iDest)
    {
        position = iPos;
        h = position.ManhattenDistance(iDest);
        /*
         * test if nodes is allowed 
         */
    }

    public void calcF()
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

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.K))
            LFindPath(new Vec2int(5, 5), new Vec2int(10, 10));
    }


	public void LFindPath(Vec2int iStart, Vec2int iDest)
    {
        start = iStart;
        dest = iDest;
        actualNode = new LPathNode(start, dest);
        actualNode.g = 0;
        actualNode.calcF();
        openList.Add(actualNode);
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
        while(true)
        {
            coroutineCount++;
            actualNode = openList[0];
            actualNode.calcF();

            List<Vec2int> parentPositions = WorldMapData.instance.tiles[actualNode.position.x, actualNode.position.y].AdjacentHexListPositions();

            for (int i = 0; i < parentPositions.Count; i++)
            {
                //FOR FUCK SAKE LUKE PLS!

                LPathNode thisParentNode = LFindPathNodeInList(parentPositions[i], true);
                if(thisParentNode == null)
                    thisParentNode = LFindPathNodeInList(parentPositions[i], false);












                var alreadyInOpenList = from lpn in openList where lpn.position.x == parentPositions[i].x && lpn.position.y == parentPositions[i].y select lpn;
                var alreadyInClosedList = from lpn in closedList where lpn.position.x == parentPositions[i].x && lpn.position.y == parentPositions[i].y select lpn;

                var alreadyInOpenListArray = alreadyInOpenList.ToArray();
                var alreadyInClosedListArray = alreadyInClosedList.ToArray();

                if (actualNode.parent == null)
                {
                    actualNode.parent = new LPathNode(parentPositions[i], dest);
                    actualNode.g = actualNode.parent.g + 1;
                    actualNode.calcF();
                }

                if (alreadyInOpenListArray.Length != 0 && alreadyInOpenListArray[0].f < actualNode.parent.f)
                {
                    actualNode.parent = alreadyInOpenListArray[0];
                    actualNode.g = actualNode.parent.g + 1;
                    actualNode.calcF();
                }

                if (alreadyInClosedListArray.Length != 0 && alreadyInClosedListArray[0].f < actualNode.parent.f)
                {
                    actualNode.parent = alreadyInClosedListArray[0];
                    actualNode.g = actualNode.parent.g + 1;
                    actualNode.calcF();
                }

                if (alreadyInOpenListArray.Length == 0 && alreadyInClosedListArray.Length == 0)
                {
                    openList.Add(new LPathNode(parentPositions[i], dest));
                }
                else if (alreadyInClosedListArray.Length != 0)
                {
                    LPathNode a = alreadyInClosedListArray[0];
                    if(alreadyInClosedListArray[0].parent.f > actualNode.f)
                        alreadyInClosedListArray[0].parent = actualNode;
                }
            }

            openList.Remove(actualNode);
            closedList.Add(actualNode);

            print(actualNode.position.ToString() + ", " + dest.ToString());

            if (actualNode.position.x == dest.x && actualNode.position.y == dest.y)
            {
                print("yay pathfinding ended!");
                List<LPathNode> path = new List<LPathNode>();
                path.Add(actualNode);
                while(path[path.Count - 1].parent != null)
                {
                    print(path[path.Count - 1].position.ToString());
                    path.Add(path[path.Count - 1].parent);
                }
                StopCoroutine("LFindPathCoroutine");
                break;
            }

            yield return null;
        }
    }
}

