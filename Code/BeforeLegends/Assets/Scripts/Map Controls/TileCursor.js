#pragma strict

var matX : Material;
var matO : Material;

function Update(){
	if(MapManager.instance.tiles[MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y].traversable){
		gameObject.GetComponent.<Renderer>().material = matO;
	}else{
		gameObject.GetComponent.<Renderer>().material = matX;
	}
	transform.position.x = MouseTileInput.instance.lastTilePos.x;
	transform.position.z = MouseTileInput.instance.lastTilePos.z;
}