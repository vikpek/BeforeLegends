#pragma strict

var objData : MapObjectCarrier;

function Update(){
	if(Input.GetMouseButtonDown(0)){
		if(UnityEngine.EventSystems.EventSystem.current.IsPointerOverGameObject())
			return;
		if(objData == null){
			objData = gameObject.GetComponent(MapObjectCarrier);
			if(objData == null){
				objData = gameObject.AddComponent(MapObjectCarrier);
				objData.transform.GetChild(0).GetComponent.<BaseStats>().FillCarrier(objData.transform.gameObject);
				//objData.data.Add(ScriptableObject.CreateInstance(MapObjectData) as MapObjectData);
				objData.data[0].pos = Vec2i(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y);
				objData.setPosition(Vec2i(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y));
				transform.position = WorldMapData.getInstance().tiles[objData.pos.x, objData.pos.y].position; 
				InterfaceData.getInstance().selectedCarrier = objData;
				FogOfWar.instance.CheckTiles(Vec2i(objData.pos.x, objData.pos.y), FogOfWar.instance.visionRange);
				FogOfWar.instance.SetEntitiesToVisible();
				return;
			}
		}
		var path : Vec2i[] = WorldMapData.getInstance().findPath(objData.pos.x, objData.pos.y, MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y, objData.movedMax - objData.moved);
		objData.followPath(path, 0.25);
	}
}