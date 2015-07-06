using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PathNode{

    public float g = 0;
    public float h = 0;
	public float f = 0;

    public int x;
    public int y;

    PathNode parent = null;



    public PathNode(int x = 0, int y = 0, PathNode parent = null, int goalX = 0, int goalY = 0)
    {
		this.x = x;
		this.y = y;
		this.parent = parent;
		evalCost(goalX, goalY);
	}
	
	void evalCost(int goalX, int goalY){
		WorldMapData data = WorldMapData.instance;
		g = parent.g + 1;
		Vector3 goal = data.tiles[goalX, goalY].position;
		Vector3 current = data.tiles[x, y].position;
		h = Mathf.Abs(goal.x - current.x) + Mathf.Abs(goal.z - current.z);	
		f = g + h;
	}
	
	public void tryAlternative(PathNode alt){
		float altG = alt.g + 1;
		if(altG < g){
			parent = alt;
			g = altG;
			f = g + h;
		}
	}
	
	 public Vec2int[] toPath(){
		Stack<Vec2int> path = new Stack<Vec2int>();
		PathNode current = this;
		while(current != null){
			path.Push(new Vec2int(current.x, current.y));
			current = current.parent;
		}
		return path.ToArray();
	}
}
