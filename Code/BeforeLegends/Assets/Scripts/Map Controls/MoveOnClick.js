#pragma strict

var objData : MapObjectData;


function Update(){
	if(Input.GetMouseButtonDown(0)){
		if(objData == null){
			objData = gameObject.GetComponent(MapObjectData);
			if(objData == null){
				objData = gameObject.AddComponent(MapObjectData);
				objData.pos = Vec2i(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y);
				transform.position = MapManager.instance.tiles[objData.pos.x, objData.pos.y].position; 
				return;
			}
		}
		ObjectTileMovement.followPath(gameObject, objData.pos.x, objData.pos.y, MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y, 0.25);
	}
}