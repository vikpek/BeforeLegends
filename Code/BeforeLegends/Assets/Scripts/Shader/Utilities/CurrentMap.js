#pragma strict

static var instance : CurrentMap;

var worldMap : GameObject;
var battleMap : GameObject;

var battle : boolean;

function Awake(){
	if(!instance) instance = this;
	worldMap.SetActive(true);
	battleMap.SetActive(false);
	battle = false;
}

function isCurrentTraversable(x : int, y : int){
	if(!battle){
		return x >= 0 && y >= 0 && x < WorldMapData.getInstance().size.x && y <  WorldMapData.getInstance().size.y ? WorldMapData.getInstance().tiles[MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y].traversable : false;
	}else{
		var battleMapGen : BattleMapGenerator = battleMap.GetComponent(BattleMapGenerator);
		return x >= 0 && y >= 0 && x < battleMapGen.width && y < battleMapGen.height;
	}
}

function toggle(){
	battle = !battle;
	worldMap.SetActive(!battle);
	battleMap.SetActive(battle);
}

