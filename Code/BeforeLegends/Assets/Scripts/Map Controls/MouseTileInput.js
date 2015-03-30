#pragma strict

static var instance : MouseTileInput;

@HideInInspector
var lastTileX : int = 0;
@HideInInspector
var lastTileY : int = 0;

@HideInInspector
var lastTilePosX : float = 0;
@HideInInspector
var lastTilePosZ : float = 0;

function Awake(){
	instance = this;
}

function Update(){
	var hit : RaycastHit;
	if(Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), hit)){
		var newTileY : int = Mathf.Round(hit.point.z / (MapManager.instance.flatHex.size.z * 0.75));
		if(newTileY >= 0 && newTileY < MapManager.instance.mapH){
			var odd : boolean = newTileY % 2 == 1;
			var newTileX : int = Mathf.Round((hit.point.x - (odd ? MapManager.instance.flatHex.extents.x : 0)) / MapManager.instance.flatHex.size.x);
			if(newTileX >= 0 && newTileX < MapManager.instance.mapW){
				lastTileY = newTileY;
				lastTileX = newTileX;
				lastTilePosX = lastTileX * MapManager.instance.flatHex.size.x + (odd ? MapManager.instance.flatHex.extents.x : 0);
				lastTilePosZ = lastTileY * MapManager.instance.flatHex.size.z * 0.75;
			}
		}
	}
}	