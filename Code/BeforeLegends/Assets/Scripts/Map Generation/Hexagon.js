#pragma strict

public class Hexagon{
var xGrid : int;
var yGrid : int;

var vertices : Vector3[];

var matID : int;
var position : Vector3;

var elevation : float;
var erosion : float;
var continent : float;
var moisture : float;

var traversable : boolean;

function generate(){
	var fault : float = calcFault(MapManager.instance.flatHex.size.x * MapManager.instance.mapW, MapManager.instance.flatHex.size.z * 0.75 * MapManager.instance.mapH);
	moisture = calcPerlin(MapManager.instance.moistureSeed, MapManager.instance.moistureScale);
	erosion = calcPerlin(MapManager.instance.erosionSeed, MapManager.instance.erosionScale);
	continent = calcPerlin(MapManager.instance.continentSeed, MapManager.instance.continentScale);
	elevation = (continent * MapManager.instance.continentWeight + erosion * MapManager.instance.erosionWeight) * fault;
	
	assignMaterial();
	traversable = matID > 2 && matID < 7;
}

function calcPerlin(offset : Vector2, scale : float){
	return Mathf.PerlinNoise(offset.x + position.x * scale, offset.y + position.z * scale);
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

function assignMaterial(){
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



}
