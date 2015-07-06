using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class WorldMapData : MonoBehaviour
{
	public Vec2int size;
	public Hexagon [ , ]tiles;
	public FlatHexagon flatHex;

    //Here is a private reference only this class can access
    private static WorldMapData _instance;

    //This is the public reference that other classes will use
    public static WorldMapData instance
    {
        get
        {
            //If _instance hasn't been set yet, we grab it from the scene!
            //This will only happen the first time this reference is used.
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<WorldMapData>();
            return _instance;
        }
    }

    function findPath(int startX, int startY, int goalX, int goalY, int restrictCost, bool ignorecollision){
		if((!ignorecollision && (!tiles[startX, startY].traversable || !tiles[goalX, goalY].traversable)) || (startX == goalX && startY == goalY)) return null;
		List<PathNode> reachable = new List<PathNode>();
		List<PathNode> visited = new List<PathNode>();
		reachable.Add(PathNode(startX, startY));
	
		while(reachable.Count != 0){
			PathNode cheapest;
			float fcost = -1;
			foreach(PathNode node in reachable){
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
	
			foreach(Hexagon hex in tiles[cheapest.x, cheapest.y].getAdjacent()){
				bool gotVisited = false;
				foreach(PathNode vNode in visited){
					if(hex.gridPos.x == vNode.x && hex.gridPos.y == vNode.y){
						gotVisited = true;
						break;
					}
				}
		
				if((hex.traversable || ignorecollision) && !gotVisited){
					bool isReachable= false;
					foreach(PathNode rNode in reachable){
						if(hex.gridPos.x == rNode.x && hex.gridPos.y == rNode.y){
							isReachable = true;
							rNode.tryAlternative(cheapest);
							break;
						}
					}
			
					if(!isReachable){
                        PathNode nNode = PathNode(hex.gridPos.x, hex.gridPos.y, cheapest, goalX, goalY);
						if(hex.gridPos.x == goalX && hex.gridPos.y == goalY) return nNode.toPath();
						reachable.Add(nNode);
					}
				}
			}
		}
		return null;
	}
}
 