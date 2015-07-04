using UnityEngine;
using System.Collections;

public class PathNode{

	float g = 0;
	float h = 0;
	float f = 0;

	int x;
	int y;

	PathNode parent = null;
	
	void PathNode(int x, int y){
		this.x = x;
		this.y = y;
	}
	
	void PathNode(int x, int y, PathNode parent, int goalX, int goalY){
		this.x = x;
		this.y = y;
		this.parent = parent;
		evalCost(goalX, goalY);
	}
	
	void evalCost(int goalX, int goalY){
		WorldMapData data = WorldMapData.getInstance();
		g = parent.g + 1;
		Vector3 goal = data.tiles[goalX, goalY].position;
		Vector3 current = data.tiles[x, y].position;
		h = Mathf.Abs(goal.x - current.x) + Mathf.Abs(goal.z - current.z);	
		f = g + h;
	}
	
	void tryAlternative(PathNode alt){
		float altG = alt.g + 1;
		if(altG < g){
			parent = alt;
			g = altG;
			f = g + h;
		}
	}
	
	 Vec2int toPath(){
		Stack<Vec2int> path = new Stack<Vec2int>();
		PathNode current = this;
		while(current){
			path.Push(Vec2i(current.x, current.y));
			current = current.parent;
		}
		return path.ToArray();
	}
}
