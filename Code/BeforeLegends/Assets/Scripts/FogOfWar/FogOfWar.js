﻿#pragma strict

static var instance : FogOfWar;

var visionRange : int;
var enemysInRange : List.<GameObject> = new List.<GameObject>();
var adjacent : List.<Hexagon> = new List.<Hexagon>();
var adjacentTemp : Hexagon[];

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
	adjacentTemp = worldData.tiles[origin.x, origin.y].getAdjacent();
	for(var i : int = 0; i < adjacentTemp.Length; i++) {
		adjacent.Add(adjacentTemp[i]);
		if(adjacentTemp[i].gameObjectList.Count > 0 && !enemysInRange.Contains(adjacentTemp[i].gameObjectList[0])) {
			enemysInRange.Add(adjacentTemp[i].gameObjectList[0]);
		}
	}

	if(radius == 1) { return; }

	for(var j : int = 0; j < radius - 1; j++) {
		var temp : int = adjacent.Count;
		for(var k : int = 0; k < temp; k++) {		
			adjacentTemp = adjacent[k].getAdjacent();
			for(var m : int = 0; m < adjacentTemp.Length; m++) {
				if(!adjacent.Contains(adjacentTemp[m]) && (adjacentTemp[m].gridPos.x != origin.x || adjacentTemp[m].gridPos.y != origin.y)) {
					adjacent.Add(adjacentTemp[m]);
					//adjacentTemp[m].traversable = false;
				}
				if(adjacentTemp[m].gameObjectList.Count > 0 && !enemysInRange.Contains(adjacentTemp[m].gameObjectList[0])) {
					//Debug.Log(adjacentTemp[m].gameObjectList[0]);
					enemysInRange.Add(adjacentTemp[m].gameObjectList[0]);
				}
			}
		}
	}
}

function SetEntitiesToVisible() {
	for(var i : int = 0; i < enemysInRange.Count; i++) {
		SetLayerRecursively(enemysInRange[i], 0);
	}
}

function SetEntitiesToInvisible() {
	for(var obj : GameObject in enemysInRange) {
		var pos : Vec2i = obj.GetComponent.<MapObjectCarrier>().pos;
		var temp : int = (pos.x - gameObject.GetComponent(MapObjectCarrier).pos.x) + (pos.y - gameObject.GetComponent(MapObjectCarrier).pos.y);
		if(temp < -visionRange - 1 || temp > visionRange + 1) {
			SetLayerRecursively(obj, 8);
			enemysInRange.Remove(obj);
		}
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