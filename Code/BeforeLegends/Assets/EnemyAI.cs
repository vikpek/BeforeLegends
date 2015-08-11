using UnityEngine;
using System.Collections;
using System;

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

    public int attackRange;
    public int visionRange;
    public int huntRange;
    public int moveTilesPerTurnMin;
    public int moveTilesPerTurnMax;

    MapObjectCarrier moc;
    MapObjectCarrier mocOlaf;

	// Use this for initialization
	void Start () {
        moc = GetComponent<MapObjectCarrier>();
        mocOlaf = GameObject.Find("Olaf").GetComponent<MapObjectCarrier>();
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.H))
        {
            HuntPlayer();
        }
	}

    public int MakeTurn()
    {
        bool suceeded = false;

        return 0;
    }

    public void HuntPlayer()
    {
        Vec2int[] path = WorldMapData.instance.findAIPath(moc.pos.x, moc.pos.y, mocOlaf.pos.x, mocOlaf.pos.x, visionRange, true);
        print(path.Length);
        Vec2int[] pathToFollow = new Vec2int[1];
        if(moveTilesPerTurnMax > path.Length)
        {
            pathToFollow = new Vec2int[moveTilesPerTurnMax];
            Array.Copy(path, pathToFollow, moveTilesPerTurnMax);
            print("pathToFollow.Length" + pathToFollow.Length);
        }
        moc.followPath(pathToFollow, 0.25f);
    }

    public void FindPathToOlaf()
    {

    }
}
