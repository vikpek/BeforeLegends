#pragma strict

import System.Linq;

static var instance : FogOfWar;

var visionRange : int;
var enemysInRange : List.<GameObject> = new List.<GameObject>();
var ressourceInRange : List.<GameObject> = new List.<GameObject>();
var adjacent : List.<Hexagon> = new List.<Hexagon>();
var adjacentTemp : List.<Hexagon> = new List.<Hexagon>();

//var adjacentTemp : Hexagon[];

function Awake() {
	if(!instance) instance = this;
}

/*function Update () {
	if(Input.GetKeyDown(KeyCode.L))
		CheckTiles(gameObject.GetComponent.<MapObjectCarrier>().pos, visionRange);
	if(Input.GetKeyDown(KeyCode.K))
		SetEntitiesToVisible();
	if(Input.GetKeyDown(KeyCode.J))
		SetEntitiesToInvisible();
}*/

function CheckTiles(origin : Vec2i, radius : int) {
	ClearLists();
	var worldData : WorldMapData = WorldMapData.getInstance();

	var hexCenter = worldData.tiles[origin.x, origin.y];
	adjacentTemp.Add(hexCenter);
	adjacent.Add(hexCenter);

	for(var i = 0; i <= radius; i++) {
		for(var l = 0; l < 6 * radius; l++) {
			adjacentTemp = adjacent[l].getAdjacent().ToList();
			for(var hex : Hexagon in adjacentTemp) {
				if(!adjacent.Contains(hex))
					adjacent.Add(hex);
			}
		}
	}
	adjacent = Enumerable.ToList(Enumerable.Distinct(adjacent));
	AddEnemysInRangeToList();
	AddRessourcesInRangeToList();
}

function AddEnemysInRangeToList() {
	for(var hex : Hexagon in adjacent) {
		for(var gO : GameObject in hex.gameObjectList) {
			if(gO.tag == "Enemy")
				enemysInRange.Add(gO);
		}
	}
}

function AddRessourcesInRangeToList() {
	for(var hex : Hexagon in adjacent) {
		for(var gO : GameObject in hex.gameObjectList) {
			if(gO.tag == "Ressource") {
				ressourceInRange.Add(gO);
				gO.GetComponent.<Ressource>().fall = true;
			}
		}
	}
}

function SetEntitiesToVisible() {
	for(var i : int = 0; i < enemysInRange.Count; i++) {
		SetLayerRecursively(enemysInRange[i], 0);
	}
	for(var j : int = 0; j < ressourceInRange.Count; j++) {
		SetLayerRecursively(ressourceInRange[j], 0);
	}
}

function SetEntitiesToInvisible() {
	var enemysInRangeTemp : List.<GameObject> = new List.<GameObject>();
	for(var obj : GameObject in enemysInRange) {
		var pos : Vec2i = obj.GetComponent.<MapObjectCarrier>().pos;
		var temp : int = (pos.x - gameObject.GetComponent(MapObjectCarrier).pos.x) + (pos.y - gameObject.GetComponent(MapObjectCarrier).pos.y);
		if(temp < -visionRange - 1 || temp > visionRange + 1) {
			enemysInRangeTemp.Add(obj);
		}
	}
	for(var gO : GameObject in enemysInRangeTemp) {
		SetLayerRecursively(gO, 11);
		enemysInRange.Remove(gO);
	}
}

function ClearLists() {
	adjacent.Clear();
}

function SetLayerRecursively( obj : GameObject, newLayer : int  )
{
    obj.layer = newLayer;
   
    for( var c in obj.transform )
    {
    	var child = c as Transform;
        SetLayerRecursively( child.gameObject, newLayer );
    }
}



// Not sure what exactly is broken with this code, but it crashes unity or/and produces weird errors
/*function CheckTiles(origin : Vec2i, radius : int) {
	ClearLists();
	var worldData : WorldMapData = WorldMapData.getInstance();
	adjacentTemp = worldData.tiles[origin.x, origin.y].getAdjacent();
	for(var i : int = 0; i < adjacentTemp.Length; i++) {
		adjacent.Add(adjacentTemp[i]);
		if(adjacentTemp[i].gameObjectList.Count > 0) {
			for(var gO : GameObject in adjacentTemp[i].gameObjectList) {
				if(gO.tag == "Enemy" && !enemysInRange.Contains(gO))
					enemysInRange.Add(gO);
			}
		}
	}

	if(radius == 1) { return; }

	for(var j : int = 0; j < radius - 1; j++) {
		for(var k : int = 0; k < adjacent.Count; k++) {		
			adjacentTemp = adjacent[k].getAdjacent();
			for(var m : int = 0; m < adjacentTemp.Length; m++) {
				var test : Hexagon = null;
				if(!adjacent.Contains(adjacentTemp[m]) && !(adjacentTemp[m].gridPos == origin)) {
					//adjacent.Add(adjacentTemp[m]);
					//adjacentTemp[m].traversable = false;
					//Debug.Log("Added");
					test = adjacentTemp[m];
				}
				//if(!test.gridPos == origin)
				adjacent.Add(test);
				
				if(!test) {Debug.Log(this);}
					//Debug.Log(!test);
					//adjacent.Remove(test);
				if(adjacentTemp[m].gameObjectList.Count > 0) {
					for(var gO : GameObject in adjacentTemp[m].gameObjectList) {
						if(gO.tag == "Enemy" && !enemysInRange.Contains(gO))
							enemysInRange.Add(gO);
					}		
				}
			}
		}
	}
}*/