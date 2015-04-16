#pragma strict

class MouseTileChangedMessage extends Message{
	var tile : Vec2i;
	var tilePos : Vector3;
	var worldPos : Vector3;
	
	function MouseTileChangedMessage(tile : Vec2i, tilePos : Vector3, worldPos : Vector3){
		super("MouseTileChanged");
		this.tile = tile;
		this.tilePos = tilePos;
		this.worldPos = worldPos;
	}
}