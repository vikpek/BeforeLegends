#pragma strict

var matX : Material;
var matO : Material;

function Update(){
	/*if(WorldMapData.getInstance().tiles[MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y].traversable){
		gameObject.GetComponent.<Renderer>().material = matO;
	}else{
		gameObject.GetComponent.<Renderer>().material = matX;
	}
	transform.position.x = MouseTileInput.instance.lastTilePos.x;
	transform.position.z = MouseTileInput.instance.lastTilePos.z;*/
	
	if(Input.GetMouseButtonDown(0)){
		var data : WorldMapData = WorldMapData.getInstance();
		var hex : Hexagon = data.tiles[MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y];
		Debug.Log(hex.elevation + " | " + hex.temperature + " | " + hex.moisture + " | " + hex.matID);
	}
}