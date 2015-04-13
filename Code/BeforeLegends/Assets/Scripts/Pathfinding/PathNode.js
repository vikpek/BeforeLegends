#pragma strict
import System.Collections.Generic;

public class PathNode{
	var g : float = 0;
	var h : float = 0;
	var f : float = 0;

	var x : int;
	var y : int;

	var parent : PathNode = null;
	
	function PathNode(x : int, y : int){
		this.x = x;
		this.y = y;
	}
	
	function PathNode(x : int, y : int, parent : PathNode, goalX : int, goalY : int){
		this.x = x;
		this.y = y;
		this.parent = parent;
		evalCost(goalX, goalY);
	}
	
	function evalCost(goalX : int, goalY : int){
		var data : WorldMapData = WorldMapData.getInstance();
		g = parent.g + data.flatHex.size.x;
		var goal : Vector3 = data.tiles[goalX, goalY].position;
		var current : Vector3 = data.tiles[x, y].position;
		h = Mathf.Abs(goal.x - current.x) + Mathf.Abs(goal.z - current.z);	
		f = g + h;
	}
	
	function tryAlternative(alt : PathNode){
		var altG : float = alt.g + WorldMapData.getInstance().size.x;
		if(altG <= g){
			parent = alt;
			g = altG;
			f = g + h;
		}
	}
	
	function toPath() : Vec2i[]{
		var path : Stack.<Vec2i> = new Stack.<Vec2i>();
		var current : PathNode = this;
		while(current){
			path.Push(Vec2i(current.x, current.y));
			current = current.parent;
		}
		return path.ToArray();
	}
}