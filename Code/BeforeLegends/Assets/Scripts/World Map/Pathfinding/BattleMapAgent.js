#pragma strict

var x : int = 0;
var y : int = 0;

function Update(){
	if(Input.GetMouseButtonDown(0)){
		moveTo(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y, 0.5);
	}
}

function moveTo(gx : int, gy : int, dur : float){
	if(x >= 0 && x < BattleMapGenerator.instance.width && y >= 0 || BattleMapGenerator.instance.height){
		var path : Vec2i[] = WorldMapData.getInstance().findPath(x, y, gx, gy, 1000, true);
		var passedTime : float = 0;
		var index : int = 0;
		var lastIndex : int = 0;
		while(passedTime/dur < path.Length - 1){
			var alpha : float = passedTime/dur;
			index = alpha;
			alpha -= index;
			var worlddata : WorldMapData = WorldMapData.getInstance();
			var a : Vector3 = worlddata.tiles[path[index].x, path[index].y].position;
			var b : Vector3 = worlddata.tiles[path[index + 1].x, path[index + 1].y].position;
			gameObject.transform.position.x = Mathf.Lerp(a.x, b.x, alpha);
			gameObject.transform.position.z = Mathf.Lerp(a.z, b.z, alpha);
		
			var reachedNext : boolean = index > lastIndex;
			if(reachedNext){
				x = path[index].x;
				y = path[index].y;
				lastIndex = index;
			}

		
			yield;
			passedTime += Time.deltaTime;
		}	
	}
}