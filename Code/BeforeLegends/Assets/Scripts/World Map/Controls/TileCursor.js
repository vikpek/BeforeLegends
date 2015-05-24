#pragma strict

function Update(){
	if(CurrentMap.instance.isCurrentTraversable(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y)){
		transform.position.x = MouseTileInput.instance.lastTilePos.x;
		transform.position.z = MouseTileInput.instance.lastTilePos.z;
	}
}