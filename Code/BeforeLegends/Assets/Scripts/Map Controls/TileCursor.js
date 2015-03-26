#pragma strict

var matX : Material;
var matO : Material;

function Update(){
	if(MapManager.instance.tiles[MouseTileInput.instance.lastTileX, MouseTileInput.instance.lastTileY].traversable){
		gameObject.GetComponent.<Renderer>().material = matO;
	}else{
		gameObject.GetComponent.<Renderer>().material = matX;
	}
	transform.position.x = MouseTileInput.instance.lastTilePosX;
	transform.position.z = MouseTileInput.instance.lastTilePosZ;
}