﻿#pragma strict

var data : MapObjectData = MapObjectData();

var pos : Vec2i;

var movedMax : int = 8;
var moved : int = 0;

var moving : boolean = false;
var paused : boolean = false;
var suspend : boolean = false;

//@HideInInspector
var enemyGameObject : GameObject;

function Start(){
	data.battleStats = gameObject.GetComponent(BattleParameters).battleParameters;
	Messenger.instance.listen(gameObject, "TurnEnded");
}

function onEvent_TurnEnded(){
	moved = 0;
}

function setPosition(pos : Vec2i){
	this.pos = pos;
	var worlddata : WorldMapData = WorldMapData.getInstance();
	worlddata.tiles[data.pos.x, data.pos.y].mapObjects.Remove(data);
	data.pos = pos;
	worlddata.tiles[data.pos.x, data.pos.y].mapObjects.Add(data);
}

function followPath(path : Vec2i[], dur : float){
	if(moving || !path) return;
	Messenger.instance.send(ActionStartedMessage());
	moving = true;
	
	var worlddata : WorldMapData = WorldMapData.getInstance();
	var passedTime : float = 0;
	var index : int = 0;
	var lastIndex : int = 0;
	while(passedTime/dur < path.Length - 1){
		var alpha : float = passedTime/dur;
		index = alpha;
		alpha -= index;
		
		var a : Vector3 = worlddata.tiles[path[index].x, path[index].y].position;
		var b : Vector3 = worlddata.tiles[path[index + 1].x, path[index + 1].y].position;
		gameObject.transform.position.x = Mathf.Lerp(a.x, b.x, alpha);
		gameObject.transform.position.z = Mathf.Lerp(a.z, b.z, alpha);
		
		var reachedNext : boolean = index > lastIndex;
		if(reachedNext){
			moved++;
			setPosition(path[index]);
			lastIndex = index;
			Messenger.instance.send(MapObjectMovedMessage(data, path[index-1]));
		}

		yield;
		
		if(reachedNext && suspend){
		 	finalizeAt(index, path, true);
		 	return;
		}
		
		if(!paused) passedTime += Time.deltaTime;
	}
	
	finalizeAt(path.Length - 1, path, false);

}

function finalizeAt(index : int, path : Vec2i[], suspended : boolean){
	var end : Vector3 = WorldMapData.getInstance().tiles[path[index].x, path[index].y].position;
	gameObject.transform.position.x = end.x;
	gameObject.transform.position.z = end.z;
	setPosition(path[index]);
	moving = false;
	suspend = false;
	Messenger.instance.send(ActionEndedMessage());
	if(!suspended){
		moved++;
		Messenger.instance.send(MapObjectMovedMessage(data, path[index-1]));
	}
	FogOfWar.instance.CheckTiles(path[index], FogOfWar.instance.visionRange);
	//Debug.Log(path[index]);
	FogOfWar.instance.SetEntitiesToVisible();
}

function OnTriggerEnter (other : Collider){
	suspend = true;
}