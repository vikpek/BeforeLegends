#pragma strict

class MapObjectMovedMessage extends Message{
	var objData : MapObjectData;
	var lastTile : Vec2i;
	
	function MapObjectMovedMessage(objData : MapObjectData, lastTile : Vec2i){
		super("MapObjectMoved");
		this.objData = objData;
		this.lastTile = lastTile;
	}
}