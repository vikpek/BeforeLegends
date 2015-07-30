using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class Hexagon {

    public Vec2int gridPos;

    public int matID;
    public string tileType;
    public float rand;
    public Vector3 position;

    public float elevation;
    public float erosion;
    public float continent;
    public float moisture;
    public float temperature;

    public bool traversable = true;
    public bool river = false;
    public bool sea = false;

    public List<MapObjectData> mapObjects = new List<MapObjectData>();

    public List<GameObject> gameObjectList = new List<GameObject>();


    public void generate(WorldMapGenerator generator)
    { //!--WorldMapGenerator--!
	    float xMax = generator.flatHex.size.x * generator.size.x;
	    float yMax = generator.flatHex.size.z * 0.75f * generator.size.y;
	    float fault = calcFault(xMax, yMax);
	    erosion = calcPerlin(generator.erosionSeed, generator.erosionScale);
	    moisture = calcPerlin(generator.moistureSeed, generator.moistureScale) * generator.moistureWeight + erosion * generator.moistureErosionWeight;
	    continent = calcPerlin(generator.continentSeed, generator.continentScale);
	    elevation = (continent * generator.continentWeight + erosion * generator.erosionWeight) * fault;
    	temperature = (1 - position.z / yMax) * generator.temperatureLocationWeight + calcPerlin(generator.temperatureSeed, generator.temperatureScale) * generator.temperatureNoiseWeight;
    }

    float calcPerlin(Vector2 offset, float scale )
    {
	    return Mathf.PerlinNoise(offset.x + position.x * scale, offset.y + position.z * scale);
    }

    float  calcFault(float xMax,float yMax)
    {
	    var bottom = position.z;
	    var top = yMax - position.z;
	    var left = position.x;
	    var	right = xMax - position.x;
	
	    var horizontal = left < right ? left : right;
	    var vertical = bottom < top ? bottom : top;
	    var all = horizontal < vertical ? horizontal : vertical; 
	
	    if(all > xMax * 0.15f)
	    {
		    return 1;
	    }
	    else
	    {
		    return all / (xMax * 0.15f);  
	    }
    }

    public void  assignMaterials(WorldMapGenerator generator){
	    int heightID = 0;
	    for(int i = 0; i < generator.heightLookup.Length; i++){
		    if(elevation < generator.heightLookup[i]){
			    heightID = i;
			    break;
		    }
	    }
	    int moistureID = 0;
	    for(int i = 0; i < generator.moistureLookup.Length; i++){
		    if(moisture < generator.moistureLookup[i]){
			    moistureID = i;
			    break;
		    }
	    }
	    int temperatureID = 0;
	    for(int i = 0; i < generator.temperatureLookup.Length; i++){
		    if(temperature < generator.temperatureLookup[i]){
			    temperatureID = i;
			    break;
		    }
	    }
	    traversable = heightID != 0;
	    matID = heightID + moistureID * generator.heightLookup.Length + temperatureID * generator.moistureLookup.Length * generator.heightLookup.Length;
    }

    Hexagon getNE()
    {
        WorldMapData data = WorldMapData.instance;
	    int x = gridPos.x + (gridPos.y % 2 == 1 ? 1 : 0);  
	    return gridPos.x < data.size.x && gridPos.y + 1 < data.size.y ? data.tiles[x, gridPos.y + 1] : null;
    }

    Hexagon getE(){
	    WorldMapData data = WorldMapData.instance;
        return gridPos.x + 1 < data.size.x ? data.tiles[gridPos.x + 1, gridPos.y] : null;
    }

    Hexagon getSE(){
        WorldMapData data = WorldMapData.instance;
	    int x = gridPos.x + (gridPos.y % 2 == 1 ? 1 : 0);  
	    return x < data.size.x && gridPos.y - 1 >= 0 ? data.tiles[x, gridPos.y - 1] : null;
    }

    Hexagon getSW(){
        WorldMapData data = WorldMapData.instance;
	    int x = gridPos.x - (gridPos.y % 2 == 0 ? 1 : 0);  
	    return x >= 0 && gridPos.y - 1 >= 0 ? data.tiles[x, gridPos.y - 1] : null;
    }

    Hexagon getW(){
        WorldMapData data = WorldMapData.instance;
	    return gridPos.x - 1 >= 0 ? data.tiles[gridPos.x - 1, gridPos.y] : null;
    }

    Hexagon getNW(){
        WorldMapData data = WorldMapData.instance;
	    int x = gridPos.x - (gridPos.y % 2 == 0 ? 1 : 0);  
	    return x >= 0 && gridPos.y + 1 < data.size.y ? data.tiles[x, gridPos.y + 1] : null;
    }

    public Hexagon[] getAdjacent(){
	    List<Hexagon> adjacent = new List<Hexagon>();
	    Hexagon ne = getNE();
	    Hexagon e = getE();
	    Hexagon se = getSE();
	    Hexagon sw = getSW();
	    Hexagon w = getW();
	    Hexagon nw = getNW();
	    if(ne != null) adjacent.Add(ne);
        if (e != null) adjacent.Add(e);
        if (se != null) adjacent.Add(se);
        if (sw != null) adjacent.Add(sw);
        if (w != null) adjacent.Add(w);
        if (nw != null) adjacent.Add(nw);
	    return adjacent.ToArray();
    }

    public void startRiver()
    {
	    List<Hexagon> river = new List<Hexagon>();
	    int currentX = gridPos.x;
	    int currentY = gridPos.y;
	    WorldMapData data = WorldMapData.instance;
	    while(!data.tiles[currentX, currentY].sea){
		    data.tiles[currentX, currentY].river = true;
		    data.tiles[currentX, currentY].traversable = false;
		
		
		    Hexagon[] adjacent = data.tiles[currentX, currentY].getAdjacent();
		    float min = 1;
		    int minIndex = -1;
		    for(var i = 0; i < adjacent.Length; i++){
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
