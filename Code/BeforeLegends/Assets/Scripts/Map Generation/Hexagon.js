#pragma strict
import System.Collections.Generic;

public class Hexagon{
var gridPos : Vec2i;

var matID : int;
var position : Vector3;

var elevation : float;
var erosion : float;
var continent : float;
var moisture : float;
var temperature : float;

var traversable : boolean;
var river : boolean = false;
var sea : boolean = false;

var mapObjects : List.<MapObjectData> = List.<MapObjectData>(); 

function generate(generator : WorldMapGenerator){
	var xMax : float = generator.flatHex.size.x * generator.size.x;
	var yMax : float = generator.flatHex.size.z * 0.75 * generator.size.y;
	var fault : float = calcFault(xMax, yMax);
	moisture = calcPerlin(generator.moistureSeed, generator.moistureScale);
	erosion = calcPerlin(generator.erosionSeed, generator.erosionScale);
	continent = calcPerlin(generator.continentSeed, generator.continentScale);
	elevation = (continent * generator.continentWeight + erosion * generator.erosionWeight) * fault;
	temperature = (1 - position.z / yMax) * generator.temperatureLocationWeight + calcPerlin(generator.temperatureSeed, generator.temperatureScale) * generator.temperatureNoiseWeight;
	
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

function assignMaterials(generator : WorldMapGenerator){
	var heightID : int = 0;
	for(var i : int = 0; i < generator.heightLookup.Length; i++){
		if(elevation < generator.heightLookup[i]){
			heightID = i;
			break;
		}
	}
	var moistureID : int = 0;
	for(i = 0; i < generator.moistureLookup.Length; i++){
		if(moisture < generator.moistureLookup[i]){
			moistureID = i;
			break;
		}
	}
	var temperatureID : int = 0;
	for(i = 0; i < generator.temperatureLookup.Length; i++){
		if(temperature < generator.temperatureLookup[i]){
			temperatureID = i;
			break;
		}
	}
	matID = heightID + moistureID * generator.heightLookup.Length + temperatureID * generator.moistureLookup.Length * generator.heightLookup.Length;
	
	traversable = matID > 2 && matID < 7;
}

function getNE() : Hexagon{
	var data : WorldMapData = WorldMapData.getInstance();
	var x : int = gridPos.x + (gridPos.y % 2 == 1 ? 1 : 0);  
	return gridPos.x < data.size.x && gridPos.y + 1 < data.size.y ? data.tiles[x, gridPos.y + 1] : null;
}

function getE() : Hexagon{
	var data : WorldMapData = WorldMapData.getInstance();
	return gridPos.x + 1 < data.size.x ? data.tiles[gridPos.x + 1, gridPos.y] : null;
}

function getSE() : Hexagon{
	var data : WorldMapData = WorldMapData.getInstance();
	var x : int = gridPos.x + (gridPos.y % 2 == 1 ? 1 : 0);  
	return x < data.size.x && gridPos.y - 1 >= 0 ? data.tiles[x, gridPos.y - 1] : null;
}

function getSW() : Hexagon{
	var data : WorldMapData = WorldMapData.getInstance();
	var x : int = gridPos.x - (gridPos.y % 2 == 0 ? 1 : 0);  
	return x >= 0 && gridPos.y - 1 >= 0 ? data.tiles[x, gridPos.y - 1] : null;
}

function getW() : Hexagon{
	var data : WorldMapData = WorldMapData.getInstance();
	return gridPos.x - 1 >= 0 ? data.tiles[gridPos.x - 1, gridPos.y] : null;
}

function getNW() : Hexagon{
	var data : WorldMapData = WorldMapData.getInstance();
	var x : int = gridPos.x - (gridPos.y % 2 == 0 ? 1 : 0);  
	return x >= 0 && gridPos.y + 1 < data.size.y ? data.tiles[x, gridPos.y + 1] : null;
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
	var currentX : int = gridPos.x;
	var currentY : int = gridPos.y;
	var data : WorldMapData = WorldMapData.getInstance();
	while(!data.tiles[currentX, currentY].sea){
		data.tiles[currentX, currentY].river = true;
		data.tiles[currentX, currentY].traversable = false;
		
		
		var adjacent : Hexagon[] = data.tiles[currentX, currentY].getAdjacent();
		var min : float = 1;
		var minIndex : int = -1;
		for(var i = 0; i < adjacent.length; i++){
			if(!adjacent[i].river && adjacent[i].elevation < min){
				min = adjacent[i].elevation;
				minIndex = i;
			}
		}
		if(minIndex == -1) break;
		
		currentX = adjacent[minIndex].gridPos.x;
		currentY = adjacent[minIndex].gridPos.y;
		
	}
}




}
