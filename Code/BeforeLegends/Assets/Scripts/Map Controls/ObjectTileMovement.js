#pragma strict

static function followPath(go : GameObject, startX : int, startY : int, goalX : int, goalY : int, dur : float){
	if((startX == goalX && startY == goalY) || !MapManager.instance.tiles[startX, startY].traversable || !MapManager.instance.tiles[goalX, goalY].traversable) return;
	var objData : DynamicObjectData = go.GetComponent(DynamicObjectData);
	if(objData == null){
		objData = go.AddComponent(DynamicObjectData);
	}
	var timestamp : float = Time.realtimeSinceStartup;
	objData.timestamp = timestamp;
	
	var path : Vec2i[] = MapManager.instance.findPath(startX, startY, goalX, goalY);
	var passedTime : float = 0;
	var rotation;
	while(passedTime/dur < path.Length - 1){
		var alpha : float = passedTime/dur;
		var index : int = alpha;
		alpha -= index;
		
		objData.pos = path[index];
		var a : Vector3 = MapManager.instance.tiles[path[index].x, path[index].y].position;
		var b : Vector3 = MapManager.instance.tiles[path[index + 1].x, path[index + 1].y].position;
		go.transform.position.x = Mathf.Lerp(a.x, b.x, alpha);
		go.transform.position.z = Mathf.Lerp(a.z, b.z, alpha);
		
		yield;
		
		passedTime += Time.deltaTime;
		
		if(objData.timestamp != timestamp) return;
	}
	
	var end : Vector3 = MapManager.instance.tiles[path[path.Length - 1].x, path[path.Length - 1].y].position;
	go.transform.position.x = end.x;
	go.transform.position.z = end.z;
	objData.pos = path[path.Length - 1];
	Debug.Log("You " + (Random.value >= 0.5 ? "won " : "lost ") + "the fight at (" + path[path.Length - 1].x + " | " +  path[path.Length - 1].y + ")");
}

