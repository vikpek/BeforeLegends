#pragma strict

static function followPath(go : GameObject, startX : int, startY : int, goalX : int, goalY : int, dur : float){
	var path : Vec2i[] = MapManager.instance.findPath(startX, startY, goalX, goalY);
	var passedTime : float = 0;
	while(passedTime/dur < path.Length - 1){
		var alpha : float = passedTime/dur;
		var index : int = alpha;
		alpha -= index;
		
		var a : Vector3 = MapManager.instance.tiles[path[index].x, path[index].y].position;
		var b : Vector3 = MapManager.instance.tiles[path[index + 1].x, path[index + 1].y].position;
		go.transform.position.x = Mathf.Lerp(a.x, b.x, alpha);
		go.transform.position.z = Mathf.Lerp(a.z, b.z, alpha);
		
		yield;
		
		passedTime += Time.deltaTime;
	}
	
	var end : Vector3 = MapManager.instance.tiles[path[path.Length - 1].x, path[path.Length - 1].y].position;
	go.transform.position.x = end.x;
	go.transform.position.z = end.z;
}