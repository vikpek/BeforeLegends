#pragma strict

var objData : MapObjectCarrier;


function Update(){
	if(Input.GetMouseButtonDown(0)){
		if(objData == null){
			objData = gameObject.GetComponent(MapObjectCarrier);
			if(objData == null){
				objData = gameObject.AddComponent(MapObjectCarrier);
				objData.data.Add(ScriptableObject.CreateInstance(MapObjectData) as MapObjectData);
				objData.data[0].pos = Vec2i(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y);
				objData.setPosition(Vec2i(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y));
				transform.position = WorldMapData.getInstance().tiles[objData.pos.x, objData.pos.y].position; 
				return;
			}
		}
		objData.followPath(WorldMapData.getInstance().findPath(objData.pos.x, objData.pos.y, MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y), 0.25);
	}
}