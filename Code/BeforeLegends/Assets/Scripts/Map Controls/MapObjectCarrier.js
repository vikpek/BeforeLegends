#pragma strict

var data : List.<MapObjectData> = List.<MapObjectData>(); 

var pos : Vec2i;

var moving : boolean = false;
var paused : boolean = false;
var suspend : boolean = false;

function setPosition(pos : Vec2i){
	this.pos = pos;
	for(var e : MapObjectData in data){
		MapManager.instance.tiles[e.pos.x, e.pos.y].mapObjects.Remove(e);
		e.pos = pos;
		MapManager.instance.tiles[e.pos.x, e.pos.y].mapObjects.Add(e);
	}
}

function followPath(startX : int, startY : int, goalX : int, goalY : int, dur : float){
	if(moving) return;
	var path : Vec2i[] = MapManager.instance.findPath(startX, startY, goalX, goalY);
	if(!path) return;
	
	moving = true;
	
	var passedTime : float = 0;
	var index : int = 0;
	var lastIndex : int = 0;
	while(passedTime/dur < path.Length - 1){
		var alpha : float = passedTime/dur;
		index = alpha;
		alpha -= index;
		
		var a : Vector3 = MapManager.instance.tiles[path[index].x, path[index].y].position;
		var b : Vector3 = MapManager.instance.tiles[path[index + 1].x, path[index + 1].y].position;
		gameObject.transform.position.x = Mathf.Lerp(a.x, b.x, alpha);
		gameObject.transform.position.z = Mathf.Lerp(a.z, b.z, alpha);
		
		var reachedNext : boolean = index > lastIndex;
		if(reachedNext){
			setPosition(path[index]);
			lastIndex = index;
			for(var e : MapObjectData in data){
				Messenger.instance.send(MapObjectMovedMessage(e, path[index-1]));
			}
		}

		
		yield;
		
		if(reachedNext && suspend){
		 	finalizeAt(index, path, false);
		 	return;
		}
		
		if(!paused) passedTime += Time.deltaTime;
	}
	
	finalizeAt(path.Length - 1, path, true);
}

function finalizeAt(index : int, path : Vec2i[], sendMsg : boolean){
	var end : Vector3 = MapManager.instance.tiles[path[index].x, path[index].y].position;
	gameObject.transform.position.x = end.x;
	gameObject.transform.position.z = end.z;
	setPosition(path[index]);
	moving = false;
	suspend = false;
	if(sendMsg){
		for(var e : MapObjectData in data){
			Messenger.instance.send(MapObjectMovedMessage(e, path[index-1]));
		}
	}
}