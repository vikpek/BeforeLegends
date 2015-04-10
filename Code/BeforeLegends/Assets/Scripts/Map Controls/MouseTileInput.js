#pragma strict

static var instance : MouseTileInput;

var lastTile : Vec2i = Vec2i(0, 0); 

var lastTilePos : Vector3 = Vector3.zero;

var lastWorldPos : Vector3 = Vector3.zero;

function Awake(){
	if(!instance) instance = this;
}

function Update(){
	var hit : RaycastHit;
	if(Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), hit)){
		var newTileY : int = Mathf.Round(hit.point.z / (MapManager.instance.flatHex.size.z * 0.75));
		if(newTileY >= 0 && newTileY < MapManager.instance.mapH){
			var odd : boolean = newTileY % 2 == 1;
			var newTileX : int = Mathf.Round((hit.point.x - (odd ? MapManager.instance.flatHex.extents.x : 0)) / MapManager.instance.flatHex.size.x);
			if(newTileX >= 0 && newTileX < MapManager.instance.mapW){
				lastWorldPos = hit.point;
				lastTile.y = newTileY;
				lastTile.x = newTileX;
				lastTilePos = MapManager.instance.tiles[newTileX, newTileY].position;
			}
		}
	}
}	