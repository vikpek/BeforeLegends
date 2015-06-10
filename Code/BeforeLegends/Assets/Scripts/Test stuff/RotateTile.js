#pragma strict

var player : GameObject;
var pos : Vec2i;

function Update () {
	if(Input.GetKeyDown(KeyCode.G)) {
		pos = player.GetComponent.<MapObjectCarrier>().pos;
		var worlddata : WorldMapData = WorldMapData.getInstance();
		//worlddata.tiles[pos.x, pos.y].gameObject;
	}
}