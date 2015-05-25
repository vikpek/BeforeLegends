#pragma strict

class WorldMapData{
	private static var instance : WorldMapData;
	var size : Vec2i;
	var tiles : Hexagon[ , ];
	var flatHex : FlatHexagon;
	
	private function WorldMapData(){}
	
	static function getInstance() : WorldMapData{
		if(instance == null) instance = new WorldMapData();
		return instance;
	}
	
	function findPath(startX : int, startY : int, goalX : int, goalY : int, restrictCost : int, ignorecollision : boolean){
		if((!ignorecollision && (!tiles[startX, startY].traversable || !tiles[goalX, goalY].traversable)) || (startX == goalX && startY == goalY)) return null;
		var reachable : List.<PathNode> = new List.<PathNode>();
		var visited : List.<PathNode> = new List.<PathNode>();
		reachable.Add(PathNode(startX, startY));
	
		while(reachable.Count){
			var cheapest : PathNode;
			var fcost : float = -1;
			for(var node : PathNode in reachable){
				if(fcost == -1 || node.f <= fcost){
					fcost = node.f;
					cheapest = node;
				} 
			}
			if(cheapest.g >= restrictCost){
				return null;
			}
			visited.Add(cheapest);
			reachable.Remove(cheapest);
	
			for(var hex in tiles[cheapest.x, cheapest.y].getAdjacent()){
				var gotVisited : boolean = false;
				for(var vNode in visited){
					if(hex.gridPos.x == vNode.x && hex.gridPos.y == vNode.y){
						gotVisited = true;
						break;
					}
				}
		
				if((hex.traversable || ignorecollision) && !gotVisited){
					var isReachable : boolean = false;
					for(var rNode in reachable){
						if(hex.gridPos.x == rNode.x && hex.gridPos.y == rNode.y){
							isReachable = true;
							rNode.tryAlternative(cheapest);
							break;
						}
					}
			
					if(!isReachable){
						var nNode : PathNode = PathNode(hex.gridPos.x, hex.gridPos.y, cheapest, goalX, goalY);
						if(hex.gridPos.x == goalX && hex.gridPos.y == goalY) return nNode.toPath();
						reachable.Add(nNode);
					}
				}
			}
		}
		return null;
	}
}