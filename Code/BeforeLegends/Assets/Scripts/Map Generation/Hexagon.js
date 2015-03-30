#pragma strict
import System.Collections.Generic;

public class Hexagon{
var xGrid : int;
var yGrid : int;

var matID : int;
var position : Vector3;

var elevation : float;
var erosion : float;
var continent : float;
var moisture : float;

var traversable : boolean;
var river : boolean = false;
var sea : boolean = false;

function generate(){
	var fault : float = calcFault(MapManager.instance.flatHex.size.x * MapManager.instance.mapW, MapManager.instance.flatHex.size.z * 0.75 * MapManager.instance.mapH);
	moisture = calcPerlin(MapManager.instance.moistureSeed, MapManager.instance.moistureScale);
	erosion = calcPerlin(MapManager.instance.erosionSeed, MapManager.instance.erosionScale);
	continent = calcPerlin(MapManager.instance.continentSeed, MapManager.instance.continentScale);
	elevation = (continent * MapManager.instance.continentWeight + erosion * MapManager.instance.erosionWeight) * fault;
	
	assignAttributes();
}

function calcPerlin(offset : Vector2, scale : float) : float{
	return Mathf.PerlinNoise(offset.x + position.x * scale, offset.y + position.z * scale);
}

function calcFault(xMax : float, yMax : float) : float{
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

function assignAttributes(){
	if(elevation < 0.35){
		sea = true;
	}
}

function assignMaterials(){
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
	
	if(river){
		matID = 2;
	}
	
	traversable = matID > 2 && matID < 7;
}

function getNE() : Hexagon{
	var x : int = xGrid + (yGrid % 2 == 1 ? 1 : 0);  
	return xGrid < MapManager.instance.mapW && yGrid + 1 < MapManager.instance.mapH ? MapManager.instance.tiles[x, yGrid + 1] : null;
}

function getE() : Hexagon{
	return xGrid + 1 < MapManager.instance.mapW ? MapManager.instance.tiles[xGrid + 1, yGrid] : null;
}

function getSE() : Hexagon{
	var x : int = xGrid + (yGrid % 2 == 1 ? 1 : 0);  
	return x < MapManager.instance.mapW && yGrid - 1 >= 0 ? MapManager.instance.tiles[x, yGrid - 1] : null;
}

function getSW() : Hexagon{
	var x : int = xGrid - (yGrid % 2 == 0 ? 1 : 0);  
	return x >= 0 && yGrid - 1 >= 0 ? MapManager.instance.tiles[x, yGrid - 1] : null;
}

function getW() : Hexagon{
	return xGrid - 1 >= 0 ? MapManager.instance.tiles[xGrid - 1, yGrid] : null;
}

function getNW() : Hexagon{
	var x : int = xGrid - (yGrid % 2 == 0 ? 1 : 0);  
	return x >= 0 && yGrid + 1 < MapManager.instance.mapH ? MapManager.instance.tiles[x, yGrid + 1] : null;
}

function getAdjacent() : Hexagon[]{
	var adjacent : List.<Hexagon> = new List.<Hexagon>();
	var ne : Hexagon = getNE();
	var e : Hexagon = getE();
	var se : Hexagon = getSE();
	var sw : Hexagon = getSW();
	var w : Hexagon = getW();
	var nw : Hexagon = getNW();
	if(ne) adjacent.Add(ne);
	if(e) adjacent.Add(e);
	if(se) adjacent.Add(se);
	if(sw) adjacent.Add(sw);
	if(w) adjacent.Add(w);
	if(nw) adjacent.Add(nw);
	return adjacent.ToArray();
}

function startRiver(){
	var river : List.<Hexagon> = new List.<Hexagon>();
	var currentX : int = xGrid;
	var currentY : int = yGrid;
	while(!MapManager.instance.tiles[currentX, currentY].sea){
		MapManager.instance.tiles[currentX, currentY].river = true;
		MapManager.instance.tiles[currentX, currentY].traversable = false;
		
		
		var adjacent : Hexagon[] = MapManager.instance.tiles[currentX, currentY].getAdjacent();
		var min : float = 1;
		var minIndex : int = -1;
		for(var i = 0; i < adjacent.length; i++){
			if(!adjacent[i].river && adjacent[i].elevation < min){
				min = adjacent[i].elevation;
				minIndex = i;
			}
		}
		if(minIndex == -1) break;
		
		currentX = adjacent[minIndex].xGrid;
		currentY = adjacent[minIndex].yGrid;
		
	}
}




}
