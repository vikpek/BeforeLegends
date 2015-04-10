#pragma strict

class MapObjectMovedMessage extends Message{
	var objData : MapObjectData;
	
	function MapObjectMovedMessage(objData : MapObjectData){
		super("MapObjectMoved");
		this.objData = objData;
	}
}