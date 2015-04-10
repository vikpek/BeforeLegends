#pragma strict

static function followPath(go : GameObject, startX : int, startY : int, goalX : int, goalY : int, dur : float){
	var objData : MapObjectData = go.GetComponent(MapObjectData);
	
	if(
	!objData ||
	objData.moving ||
	(startX == goalX && startY == goalY) || 
	!MapManager.instance.tiles[startX, startY].traversable || 
	!MapManager.instance.tiles[goalX, goalY].traversable){
		return;
	}
	
	objData.moving = true;
	
	var path : Vec2i[] = MapManager.instance.findPath(startX, startY, goalX, goalY);
	var passedTime : float = 0;
	var index : int = 0;
	var lastIndex : int = 0;
	
	while(passedTime/dur < path.Length - 1){
		var alpha : float = passedTime/dur;
		index = alpha;
		alpha -= index;
		
		objData.pos = path[index];
		var a : Vector3 = MapManager.instance.tiles[path[index].x, path[index].y].position;
		var b : Vector3 = MapManager.instance.tiles[path[index + 1].x, path[index + 1].y].position;
		go.transform.position.x = Mathf.Lerp(a.x, b.x, alpha);
		go.transform.position.z = Mathf.Lerp(a.z, b.z, alpha);
		
		var reachedNext : boolean = index > lastIndex;
		if(reachedNext){
			lastIndex = index;
			Messenger.instance.send(MapObjectMovedMessage(objData));
		}
		
		yield;
		
		if(reachedNext && objData.suspend){
		 	finalizeAt(index, objData, path, false);
		 	return;
		}
		
		if(!objData.paused) passedTime += Time.deltaTime;
	}
	
	finalizeAt(path.Length - 1, objData, path, true);
}

private static function finalizeAt(index : int, objData : MapObjectData, path : Vec2i[], sendMsg : boolean){
	var end : Vector3 = MapManager.instance.tiles[path[index].x, path[index].y].position;
	objData.transform.position.x = end.x;
	objData.transform.position.z = end.z;
	objData.pos = path[index];
	objData.moving = false;
	objData.suspend = false;
	if(sendMsg) Messenger.instance.send(MapObjectMovedMessage(objData));
}

