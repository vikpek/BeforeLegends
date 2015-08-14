using UnityEngine;
using System.Collections;
using System;

public delegate void LPathfindingCallback(Vec2int[] path);

public class Terrain
{
    public int[] ids;
    public string name;
    public bool sameTerrain(int[] compareIds)
    {
        if (compareIds.Length == 0 || ids.Length == 0)
        {
            Debug.Log("Terrain.sameTerrain(int[] compareIds): one of the ID arrays is empty... check that!");
            return false;
        }
        for (int i = 0; i < ids.Length; i++)
            for (int j = 0; j < compareIds.Length; j++)
                if (ids[i] == compareIds[j])
                    return true;
        return false;
    }
}

public class EnemyAI : MonoBehaviour {


    //public int attackRange;
    //public int visionRange;
    //public int huntRange;
    //public int moveTilesPerTurnMin;
    public int moveTilesPerTurnMax;
    int tilesMoved = 0;

    private bool walkFinished = true;
    private bool stepFinished = false;
    private Vector3 walkStart = Vector3.zero;
    private Vector3 walkDestination = Vector3.zero;
    private Vec2int[] pathToWalk;
    private int walkIndex = 0;
    public float walkStepTime;
    private float walkStepTimeActual = 0;

    MapObjectCarrier moc;
    MapObjectCarrier mocOlaf;

    LPathfinding lpf;

    public GameObject pathIndicatorPrefab;

	// Use this for initialization
	void Start () {
        moc = GetComponent<MapObjectCarrier>();
        mocOlaf = GameObject.Find("Olaf").GetComponent<MapObjectCarrier>();
        lpf = gameObject.AddComponent<LPathfinding>();
        lpf.nodesPerFrame = 5;
	}

    public int MakeTurn()
    {
        bool suceeded = false;

        return 0;
    }

    public void HuntPlayer()
    {
        lpf.LFindPath(moc.pos, mocOlaf.pos, FollowOlaf);
    }

    public void FollowOlaf(Vec2int[] path)
    {
        pathToWalk = path;
        walkStart = transform.position;
        walkFinished = false;
        walkIndex = path.Length - 1;   
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.H))
        {
            HuntPlayer();
        }

        if(!walkFinished)
        {
            walkStepTimeActual += Time.deltaTime;
            Vector3 nextPosition = new Vector3(0, transform.position.y, 0);
            nextPosition.x = Mathf.Lerp(walkStart.x, WorldMapData.instance.tiles[pathToWalk[walkIndex].x, pathToWalk[walkIndex].y].position.x, walkStepTimeActual / walkStepTime);
            nextPosition.z = Mathf.Lerp(walkStart.z, WorldMapData.instance.tiles[pathToWalk[walkIndex].x, pathToWalk[walkIndex].y].position.z, walkStepTimeActual / walkStepTime);

            transform.position = nextPosition;

            if (walkStepTimeActual / walkStepTime >= 1.0f)
                stepFinished = true;

            if(stepFinished)
            {

                moc.pos = pathToWalk[walkIndex];
                WorldMapData worlddata = WorldMapData.instance;
                worlddata.tiles[moc.data.pos.x, moc.data.pos.y].mapObjects.Remove(moc.data);
                worlddata.tiles[moc.data.pos.x, moc.data.pos.y].gameObjectList.Remove(transform.parent.gameObject);
                moc.data.pos = pathToWalk[walkIndex];
                worlddata.tiles[moc.data.pos.x, moc.data.pos.y].mapObjects.Add(moc.data);
                worlddata.tiles[moc.data.pos.x, moc.data.pos.y].gameObjectList.Add(transform.parent.gameObject);


                walkStart = transform.position;
                stepFinished = false;
                GameObject goTemp = Instantiate(pathIndicatorPrefab, WorldMapData.instance.tiles[pathToWalk[walkIndex].x, pathToWalk[walkIndex].y].position, Quaternion.identity) as GameObject;
                goTemp.transform.parent = gameObject.transform;
                walkIndex--;
                walkStepTimeActual = 0;
                tilesMoved++;
                if (walkIndex < 0 || tilesMoved > moveTilesPerTurnMax)
                {
                    walkFinished = true;
                    tilesMoved = 0;
                    TurnManager.instance.nextEnemyDoTurn = true;
                }
            }
        }
    }
}
