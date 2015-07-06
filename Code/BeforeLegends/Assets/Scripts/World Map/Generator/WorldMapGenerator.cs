using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;



public class WorldMapGenerator : MonoBehaviour
{
    Material mapMaterial;
    Vec2int size;
    Vec2int chunkSize;
    int seed;
    float erosionScale;
    float continentScale;
    float moistureScale;
    float temperatureScale;
    float erosionWeight;
    float moistureErosionWeight;
    float moistureWeight;
    float continentWeight;
    float temperatureNoiseWeight;
    float temperatureLocationWeight;
    Texture2D[] tileTextures; 

    float[] heightLookup;
    float[] moistureLookup; 
    float[] temperatureLookup;

    List<DropChance> DropChances = new List<DropChance>();

    int[] water;
    int[] ice;
    int[] ice_mountain;
    int[] tundra;
    int[] savana;
    int[] dry_forest;
    int[] dry_mountain;
    int[] grassland;
    int[] forest;
    int[] forest_mountain;
    int[] desert;
    int[] desert_mountain;
    int[] jungle;
    int[] dry_foreachest;
    int[] foreachest;
    int[] foreachest_mountain;
    
    Texture2D chunkTexture;

    Texture2D chunkTextureNormal;

    Rect[] chunkTextureRects;
  
    List<Vector2[]> chunkUVs;
  
    Vector2 continentSeed;
    Vector2 temperatureSeed;
    Vector2 moistureSeed;
    Vector2 erosionSeed;

    FlatHexagon flatHex;

    void Start()
    {
        flatHex = new FlatHexagon(1);
        setSeeds();
        packTextures();
        generate();
        createChunks();
        spawnObjects();
        spawnCarriers();
        spwanRessources();
        spawnPlayer();
    }

    void setSeeds()
    {
        Random.seed = seed;
        temperatureSeed = new Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
        continentSeed = new Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
        moistureSeed = new Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
        erosionSeed = new Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
    }

    void packTextures()
    {
	    chunkTexture = new Texture2D(2048, 2048);
	    chunkTexture.filterMode = FilterMode.Trilinear;
	    chunkTextureRects = chunkTexture.PackTextures(tileTextures, 50, 2048);
	    chunkUVs = new List<Vector2[]>();
	    foreach(Rect rect in chunkTextureRects){
		    Vector2[] uvs = new Vector2[flatHex.uv.Length];
		    for(int i = 0; i < uvs.Length; i++){
                Vector2 uv = new Vector2();
			    uv.x = rect.x + rect.width * flatHex.uv[i].x;
			    uv.y = rect.y + rect.height * flatHex.uv[i].y;
			    uvs[i] = uv;
		    }
		    chunkUVs.Add(uvs);
	    }
	    chunkTexture.Apply();
	    mapMaterial.mainTexture = chunkTexture;
    }

    void spawnObjects()
    {
	    WorldMapData data = WorldMapData.instance;
	    foreach(Hexagon tile in data.tiles){
		    if(tile.traversable && Random.Range(0f, 1f) <= 0.025){
                MapObjectData obj = new MapObjectData();
			    obj.appearanceID = Random.Range(0f, 1f) >= 0.5 ? 0 : 1;
			    tile.mapObjects.Add(obj);
		    }
	    }	
    }

    void spawnCarriers(){
	    WorldMapData data = WorldMapData.instance;
	    foreach(Hexagon tile in data.tiles){
		    if(tile.mapObjects.Count != 0){
			    GameObject go = (GameObject)Instantiate(CharacterModelPrefabs.prefabs[tile.mapObjects[0].appearanceID], tile.position, Quaternion.identity);
			    go.transform.parent = transform;
			    go.GetComponent<MapObjectCarrier>().pos = tile.gridPos;
			    go.GetComponent<MapObjectCarrier>().data = tile.mapObjects[0];
			    tile.gameObjectList.Add(go);
		    }
	    }	
    }

    void spwanRessources()
    {
	    WorldMapData data = WorldMapData.instance;
	    foreach(Hexagon tile in data.tiles){
		    DropChance chance = returnDropChance(tile.matID, DropChances);
		    chance.overallDropChance();
		    tile.tileType = chance.tileType;

		    float spawnChance = Random.Range(0.0f, 1.0f);
		    if(chance.chance > spawnChance && tile.traversable == true){
			    int spawn = chance.returnDrop();
			    float randomX = Random.Range(0, 2);
			    if(randomX > 0.5f)
				    randomX = 0.4f;
			    else if(randomX < 0.5f)
				    randomX = -0.4f;
			    else
				    randomX = 0;

			    float randomY = Random.Range(0, 2);
			    if(randomY > 0.5f)
				    randomY = 0.4f;
			    else if(randomY < 0.5f)
				    randomY = -0.4f;
			    else
				    randomY = 0;
			
			    GameObject go = Instantiate(CharacterModelPrefabs.ressourcePrefabs[spawn], new Vector3(tile.position.x + randomX, tile.position.y + 10, tile.position.z + randomY) , CharacterModelPrefabs.ressourcePrefabs[spawnChance].transform.rotation);
			    FogOfWar.instance.SetLayerRecursively(go, 11);
			    go.transform.parent = transform;
			    go.GetComponent<Ressource>().pos = tile.gridPos;
			    tile.gameObjectList.Add(go);
		    }
	    }
    }

    DropChance returnDropChance(int matID, List<DropChance> DropChances) 
    {
 	    foreach(int e in ice) {
 		    if(e == matID)
 			    return DropChances[1];
 	    }
 	    foreach(int e in ice_mountain) {
 		    if(e == matID)
 			    return DropChances[2];
 	    }
 	    foreach(int e in tundra) {
 		    if(e == matID)
 			    return DropChances[3];
 	    }
 	    foreach(int e in savana) {
 		    if(e == matID)
 			    return DropChances[4];
 	    }
 	    foreach(int e in dry_foreachest) {
 		    if(e == matID)
 			    return DropChances[5];
 	    }
 	    foreach(int e in dry_mountain) {
 		    if(e == matID)
 			    return DropChances[6];
 	    }
 	    foreach(int e in grassland) {
 		    if(e == matID)
 			    return DropChances[7];
 	    }
 	    foreach(int e in foreachest) {
 		    if(e == matID)
 			    return DropChances[8];
 	    }
 	    foreach(int e in foreachest_mountain) {
 		    if(e == matID)
 			    return DropChances[9];
 	    }
 	    foreach(int e in desert) {
 		    if(e == matID)
 			    return DropChances[10];
 	    }
 	    foreach(int e in desert_mountain) {
 		    if(e == matID)
 			    return DropChances[11];
 	    }
 	    foreach(int e in jungle) {
 		    if(e == matID)
 			    return DropChances[12];
 	    }
 	    return DropChances[0];
    }
}