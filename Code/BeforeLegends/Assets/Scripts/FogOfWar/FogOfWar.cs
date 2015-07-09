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

/*void Update () {
	if(Input.GetKeyDown(KeyCode.L))
		CheckTiles(gameObject.GetComponent.<MapObjectCarrier>().pos, visionRange);
	if(Input.GetKeyDown(KeyCode.K))
		SetEntitiesToVisible();
	if(Input.GetKeyDown(KeyCode.J))
		SetEntitiesToInvisible();
}*/

    public void CheckTiles(Vec2int origin, int radius) {
	    ClearLists();
	    WorldMapData worldData = WorldMapData.instance;

	    var hexCenter = worldData.tiles[origin.x, origin.y];
	    adjacentTemp.Add(hexCenter);
	    adjacent.Add(hexCenter);

	    for(var i = 0; i <= radius; i++) {
		    for(var l = 0; l < 6 * radius; l++) {
			    adjacentTemp = adjacent[l].getAdjacent().ToList();
			    foreach(Hexagon hex in adjacentTemp) {
				    if(!adjacent.Contains(hex))
					    adjacent.Add(hex);
			    }
		    }
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
}
