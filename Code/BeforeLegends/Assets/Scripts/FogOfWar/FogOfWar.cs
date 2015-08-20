using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class FogOfWar : MonoBehaviour {

    public int visionRange;
    public List<GameObject> enemysInRange = new List<GameObject>();
    public List<GameObject> ressourceInRange = new List<GameObject>();
    public List<Hexagon> adjacent = new List<Hexagon>();
    public List<Hexagon> adjacentTemp = new List<Hexagon>();

    public GameObject tempGo;
    
//var adjacentTemp : Hexagon[];

    private static FogOfWar _instance;

    public static FogOfWar instance
    {
        get
        {
            //If _instance hasn't been set yet, we grab it from the scene!
            //This will only happen the first time this reference is used.
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<FogOfWar>();
            return _instance;
        }
    }

    public void CheckTiles(Vec2int origin, int radius) {
	    ClearLists();

	    WorldMapData worldData = WorldMapData.instance;

        adjacentTemp.Clear();
        Hexagon hexCenter = worldData.tiles[origin.x, origin.y];
	    adjacentTemp.Add(hexCenter);
	    adjacent.Add(hexCenter);
        int newAdjacentLength = 0;

        adjacentTemp = adjacent[0].getAdjacent().ToList();
        if (WorldMapGenerator.instance.playerSpawned)
            if (!WorldMapData.instance.tiles[hexCenter.gridPos.x, hexCenter.gridPos.y].alreadyFlipped)
            {
                FogOfWarTiles.instance.AddTileToUnFOW(hexCenter.gridPos, WorldMapData.instance.tiles[hexCenter.gridPos.x, hexCenter.gridPos.y].matID, origin);
                WorldMapData.instance.tiles[hexCenter.gridPos.x, hexCenter.gridPos.y].alreadyFlipped = true;
            }

        foreach (Hexagon hex in adjacentTemp)
        {
            if (!adjacent.Contains(hex))
            {
                if (WorldMapGenerator.instance.playerSpawned)
                    if (!WorldMapData.instance.tiles[hex.gridPos.x, hex.gridPos.y].alreadyFlipped)
                    {
                        FogOfWarTiles.instance.AddTileToUnFOW(hex.gridPos, WorldMapData.instance.tiles[hex.gridPos.x, hex.gridPos.y].matID, origin);
                        WorldMapData.instance.tiles[hex.gridPos.x, hex.gridPos.y].alreadyFlipped = true;
                    }
                adjacent.Add(hex);
            }
        }

        newAdjacentLength = adjacent.Count;

        for (int i = 0; i < radius - 1; i++)
        {
            for (int l = 0; l < newAdjacentLength; l++)
            {
                adjacentTemp = adjacent[l].getAdjacent().ToList();
                foreach (Hexagon hex in adjacentTemp)
                {
                    if (!adjacent.Contains(hex))
                    {
                        if (WorldMapGenerator.instance.playerSpawned)
                            if (!WorldMapData.instance.tiles[hex.gridPos.x, hex.gridPos.y].alreadyFlipped)
                            {
                                WorldMapData.instance.tiles[hex.gridPos.x, hex.gridPos.y].alreadyFlipped = true;
                                FogOfWarTiles.instance.AddTileToUnFOW(hex.gridPos, WorldMapData.instance.tiles[hex.gridPos.x, hex.gridPos.y].matID, origin);

                            }
                        adjacent.Add(hex);
                    }
                }
            }
            newAdjacentLength = adjacent.Count;
        }

	    adjacent = Enumerable.ToList(Enumerable.Distinct(adjacent));
	    AddEnemysInRangeToList();
	    AddRessourcesInRangeToList();
    }



    public void AddEnemysInRangeToList()
    {
	    foreach(Hexagon hex in adjacent) {
		    foreach(GameObject gO in hex.gameObjectList) 
            {
			    if(gO.tag == "EnemyParent")
				    enemysInRange.Add(WorldMapGenerator.instance.enemys[gO]);
		    }
	    }
    }

    public void AddRessourcesInRangeToList()
    {
	    foreach(Hexagon hex in adjacent) {
		    foreach(GameObject gO in hex.gameObjectList) {
			    if(gO.tag == "Ressource") {
				    ressourceInRange.Add(gO);
				    gO.GetComponent<Ressource>().fall = true;
			    }
		    }
	    }
    }

    public void SetEntitiesToVisible()
    {
	    for(int i = 0; i < enemysInRange.Count; i++) {
		    SetLayerRecursively(enemysInRange[i], 15);
	    }
	    for(int j = 0; j < ressourceInRange.Count; j++) {
		    SetLayerRecursively(ressourceInRange[j], 15);
	    }
    }

    public void SetEntitiesToInvisible()
    {
	    List<GameObject> enemysInRangeTemp = new List<GameObject>();
	    foreach(GameObject obj in enemysInRange) {
		    Vec2int pos = obj.GetComponent<MapObjectCarrier>().pos;
		    int temp = (pos.x - gameObject.GetComponent<MapObjectCarrier>().pos.x) + (pos.y - gameObject.GetComponent<MapObjectCarrier>().pos.y);
		    if(temp < -visionRange - 1 || temp > visionRange + 1) {
			    enemysInRangeTemp.Add(obj);
		    }
	    }
	    foreach(GameObject gO in enemysInRangeTemp) {
		    SetLayerRecursively(gO, 11);
		    enemysInRange.Remove(gO);
	    }
    }

    public void ClearLists()
    {
	    adjacent.Clear();
        enemysInRange.Clear();
        ressourceInRange.Clear();
    }

    public void SetLayerRecursively(GameObject obj, int newLayer)
    {
        obj.layer = newLayer;
   
        foreach(Transform c in obj.transform)
        {
    	    var child = c as Transform;
            SetLayerRecursively( child.gameObject, newLayer );
        }
    }

    void Cheat() {
        GameObject[] objects = GameObject.FindGameObjectsWithTag("Ressource");
        GameObject[] enemys = GameObject.FindGameObjectsWithTag("Enemy");
        foreach(GameObject gO in objects) {
            SetLayerRecursively(gO, 15);
            gO.GetComponent<Ressource>().fall = true;
        }
        foreach (GameObject gO in enemys) {
            SetLayerRecursively(gO, 15);
        }
    }

    void Update() 
    {
        if(Input.GetKeyDown(KeyCode.X)) {
           Cheat();
        }
        if (Input.GetKeyDown(KeyCode.L))
            CheckTiles(new Vec2int(0, 0), 5);
    }
}
