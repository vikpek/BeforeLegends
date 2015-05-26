#pragma strict

var objData : MapObjectCarrier;

function Update(){
	if(Input.GetMouseButtonDown(0)){
		if(objData == null){
			objData = gameObject.GetComponent(MapObjectCarrier);
			if(objData == null){
				objData = gameObject.AddComponent(MapObjectCarrier);
				objData.setPosition(Vec2i(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y));
				transform.position = WorldMapData.getInstance().tiles[objData.pos.x, objData.pos.y].position; 
				InterfaceData.getInstance().selectedCarrier = objData;
				FogOfWar.instance.CheckTiles(Vec2i(objData.pos.x, objData.pos.y), FogOfWar.instance.visionRange);
				FogOfWar.instance.SetEntitiesToVisible();
				return;
			}
		}
		var path : Vec2i[] = WorldMapData.getInstance().findPath(objData.pos.x, objData.pos.y, MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y, objData.movedMax - objData.moved, false);
		objData.followPath(path, 0.25);
	}
}