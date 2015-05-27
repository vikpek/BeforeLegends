#pragma strict

var data : List.<MapObjectData> = List.<MapObjectData>(); 

var pos : Vec2i;

var movedMax : int = 8;
var moved : int = 0;

var moving : boolean = false;
var paused : boolean = false;
var suspend : boolean = false;

//@HideInInspector
var audioObject : AudioObject;
//@HideInInspector
var enemyGameObject : GameObject;

function Start(){
	Messenger.instance.listen(gameObject, "TurnEnded");
	if(gameObject.tag == "Player")
		audioObject = AudioMaster.instance.FetchAudioObject("Olaf");
	else
		audioObject = AudioMaster.instance.FetchAudioObject(gameObject.name.Substring(0, gameObject.name.Length - 7));
}

function onEvent_TurnEnded(){
	moved = 0;
}

function setPosition(pos : Vec2i){
	this.pos = pos;
	var worlddata : WorldMapData = WorldMapData.getInstance();
	for(var e : MapObjectData in data){
		worlddata.tiles[e.pos.x, e.pos.y].mapObjects.Remove(e);
		e.pos = pos;
		worlddata.tiles[e.pos.x, e.pos.y].mapObjects.Add(e);
	}
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
			
			for(var e : MapObjectData in data){
				Messenger.instance.send(MapObjectMovedMessage(e, path[index-1]));
			}

			if(CheckForEnemy(path[lastIndex])) {
				enemyGameObject = worlddata.tiles[pos.x, pos.y].gameObjectList[0];
				suspend = true;
				BattleMaster.instance.combatSequence(data[0].battleStats, enemyGameObject.GetComponent.<MapObjectCarrier>().data[0].battleStats);
			}
			//Reveal enemys in rannge, hide enemys that move out of range
			FogOfWar.instance.CheckTiles(path[index], FogOfWar.instance.visionRange);
			FogOfWar.instance.SetEntitiesToVisible();
			FogOfWar.instance.SetEntitiesToInvisible();
		}
		
		yield;
		
		if(reachedNext && suspend){
		 	finalizeAt(index, path, true);
		 	return;
		}
		
		if(!paused) passedTime += Time.deltaTime;
	}
	
	finalizeAt(path.Length - 1, path, false);

	if(CheckForEnemy(path[path.Length - 1])) {
		enemyGameObject = worlddata.tiles[pos.x, pos.y].gameObjectList[0];
		suspend = true;
		BattleMaster.instance.combatSequence(data[0].battleStats, enemyGameObject.GetComponent.<MapObjectCarrier>().data[0].battleStats);
	}

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
		for(var e : MapObjectData in data){
			Messenger.instance.send(MapObjectMovedMessage(e, path[index-1]));
		}
	}
}

function CheckForEnemy(pos : Vec2i) {
	var mapData : WorldMapData = WorldMapData.getInstance();
	if(mapData.tiles[pos.x, pos.y].gameObjectList == null) return false;
	for(var obj : GameObject in mapData.tiles[pos.x, pos.y].gameObjectList) {
		if(obj.tag == "Enemy") return true;
	}
	return false;
}