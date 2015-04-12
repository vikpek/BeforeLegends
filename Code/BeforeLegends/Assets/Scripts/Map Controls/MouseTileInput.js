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
	var data : WorldMapData = WorldMapData.getInstance();
	if(Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), hit)){
		var newTileY : int = Mathf.Round(hit.point.z / (data.flatHex.size.z * 0.75));
		if(newTileY >= 0 && newTileY < data.size.y){
			var odd : boolean = newTileY % 2 == 1;
			var newTileX : int = Mathf.Round((hit.point.x - (odd ? data.flatHex.extents.x : 0)) / data.flatHex.size.x);
			if(newTileX >= 0 && newTileX < data.size.x){
				lastWorldPos = hit.point;
				lastTile.y = newTileY;
				lastTile.x = newTileX;
				lastTilePos = data.tiles[newTileX, newTileY].position;
			}
		}
	}
}	