#pragma strict

var objData : DynamicObjectData;


function Update(){
	if(Input.GetMouseButtonDown(0)){
		if(objData == null){
			objData = gameObject.GetComponent(DynamicObjectData);
			if(objData == null){
				objData = gameObject.AddComponent(DynamicObjectData);
				objData.pos = Vec2i(MouseTileInput.instance.lastTileX, MouseTileInput.instance.lastTileY);
				transform.position = MapManager.instance.tiles[objData.pos.x, objData.pos.y].position; 
				return;
			}
		}
		ObjectTileMovement.followPath(gameObject, objData.pos.x, objData.pos.y, MouseTileInput.instance.lastTileX, MouseTileInput.instance.lastTileY, 0.25);
	}
}