#pragma strict

public class Hexagon{
var xGrid : int;
var yGrid : int;

var vertices : Vector3[];

var hexMesh : Mesh;
var matID : int;
var position : Vector3;

function generate(){
	var perlin : float = calcPerlin(MapManager.instance.seed.x, MapManager.instance.seed.y, 0.015);
	var fault : float = calcFault(MapManager.instance.flatHex.size.x * MapManager.instance.mapW, MapManager.instance.flatHex.size.z * 0.75 * MapManager.instance.mapH);
	var elevation = perlin * fault;
	
	
	
	if(elevation < 0.20){
		matID = 0;
	}else if(elevation < 0.30){
		matID = 1;
	}else if(elevation < 0.35){
		matID = 2;
	}else if(elevation < 0.40){
		matID = 3;
	}else if(elevation < 0.45){
		matID = 4;
	}else if(elevation < 0.55){
		matID = 5;
	}else if(elevation < 0.75){
		matID = 6;
	}else if(elevation < 0.85){
		matID = 7;
	}else{
		matID = 8;
	}
	
}

function calcPerlin(offsetX : float, offsetY : float, scale : float){
	return Mathf.PerlinNoise(offsetX + position.x * scale, offsetY + position.z * scale);
}

function calcFault(xMax : float, yMax : float){
	var bottom = position.z;
	var top = yMax - position.z;
	var left = position.x;
	var	right = xMax - position.x;
	
	var horizontal = left < right ? left : right;
	var vertical = bottom < top ? bottom : top;
	var all = horizontal < vertical ? horizontal : vertical; 
	
	if(all > xMax * 0.15){
		return 1;
	}else{
		return all / (xMax * 0.15);  
	}
	

}



}
