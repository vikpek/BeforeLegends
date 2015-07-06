#pragma strict

import System.Collections.Generic;
import System.IO;

var mapMaterial : Material;
var size : Vec2i;
var chunkSize : Vec2i;
var seed : long;
var erosionScale : float;
var continentScale : float;
var moistureScale : float;
var temperatureScale : float;
var erosionWeight : float;
var moistureErosionWeight : float;
var moistureWeight : float;
var continentWeight : float;
var temperatureNoiseWeight : float;
var temperatureLocationWeight : float;
var tileTextures : Texture2D[];

var heightLookup : float[];
var moistureLookup : float[];
var temperatureLookup : float[];

var DropChances : List.<DropChance> = new List.<DropChance>();

var water : int[];
var ice : int[];
var ice_mountain : int[];
var tundra : int[];
var savana : int[];
var dry_forest : int[];
var dry_mountain : int[];
var grassland : int[];
var forest : int[];
var forest_mountain : int[];
var desert : int[];
var desert_mountain : int[];
var jungle : int[];

var silverLion : int[];
var hornedLion : int[];


@HideInInspector 
var chunkTexture : Texture2D;

@HideInInspector
var chunkTextureNormal : Texture2D;

@HideInInspector 
var chunkTextureRects : Rect[];

@HideInInspector 
var chunkUVs : List.<Vector2[]>;

@HideInInspector
var continentSeed : Vector2;

@HideInInspector
var temperatureSeed : Vector2;

@HideInInspector
var moistureSeed : Vector2;

@HideInInspector
var erosionSeed : Vector2;

@HideInInspector
var flatHex : FlatHexagon;

function Start(){
	flatHex = FlatHexagon(1);
	setSeeds();
	packTextures();
	generate();
	createChunks();
	spawnObjects();
	spawnCarriers();
	spwanRessources();
	spawnPlayer();
}

function setSeeds(){
	Random.seed = seed;
	temperatureSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
	continentSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
	moistureSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
	erosionSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
}

function packTextures(){
	chunkTexture = Texture2D(2048, 2048);
	chunkTexture.filterMode = FilterMode.Trilinear;
	chunkTextureRects = chunkTexture.PackTextures(tileTextures, 50, 2048);
	chunkUVs = new List.<Vector2[]>();
	for(var rect : Rect in chunkTextureRects){
		var uvs : Vector2[] = new Vector2[flatHex.uv.Length];
		for(var i : int = 0; i < uvs.length; i++){
			var uv : Vector2 = Vector2();
			uv.x = rect.x + rect.width * flatHex.uv[i].x;
			uv.y = rect.y + rect.height * flatHex.uv[i].y;
			uvs[i] = uv;
		}
		chunkUVs.Add(uvs);
	}
	chunkTexture.Apply();
	mapMaterial.mainTexture = chunkTexture;
}


//need some spawning system
function spawnObjects(){
	var data : WorldMapData = WorldMapData.getInstance();
	for(var tile : Hexagon in data.tiles){
		if(tile.traversable && Random.Range(0f, 1f) <= 0.025){
			var obj : MapObjectData = MapObjectData();
			var ID : int = 0;

            for(var e : int in silverLion) {
                 if(e == tile.matID)
                     ID = 1;
             }
             for(var e : int in hornedLion) {
                 if(e == tile.matID)
                     ID = 0;;
             }

            obj.appearanceID = ID;
			tile.mapObjects.Add(obj);
		}
	}	
}

function spawnCarriers(){
	var data : WorldMapData = WorldMapData.getInstance();
	for(var tile : Hexagon in data.tiles){
		if(tile.mapObjects.Count != 0){
			var go : GameObject = Instantiate(CharacterModelPrefabs.prefabs[tile.mapObjects[0].appearanceID], tile.position, Quaternion.identity);
			go.transform.parent = transform;
			go.GetComponent.<MapObjectCarrier>().pos = tile.gridPos;
			go.GetComponent.<MapObjectCarrier>().data = tile.mapObjects[0];
			tile.gameObjectList.Add(go);
		}
	}	
}

function spwanRessources(){
	var data : WorldMapData = WorldMapData.getInstance();
	for(var tile : Hexagon in data.tiles){
		var chance : DropChance = returnDropChance(tile.matID, DropChances);
		chance.overallDropChance();
		tile.tileType = chance.tileType;

		var spawnChance : float = Random.Range(0.0, 1.0);
		if(chance.chance > spawnChance && tile.traversable == true){
			var spawn : int = chance.returnDrop();
			var randomX : float = Random.Range(0, 2);
			if(randomX > 0.5)
				randomX = 0.4;
			else if(randomX < 0.5)
				randomX = -0.4;
			else
				randomX = 0;

			var randomY : float = Random.Range(0, 2);
			if(randomY > 0.5)
				randomY = 0.4;
			else if(randomY < 0.5)
				randomY = -0.4;
			else
				randomY = 0;
			
			var go : GameObject = Instantiate(CharacterModelPrefabs.ressourcePrefabs[spawn], new Vector3(tile.position.x + randomX, tile.position.y + 10, tile.position.z + randomY) , CharacterModelPrefabs.ressourcePrefabs[spawnChance].transform.rotation);
			FogOfWar.instance.SetLayerRecursively(go, 11);
			go.transform.parent = transform;
			go.GetComponent.<Ressource>().pos = tile.gridPos;
			tile.gameObjectList.Add(go);
		}
	}
}

function createChunks(){
	var chunkMesh : Mesh = getChunkMesh();
	var xChunks = size.x / chunkSize.x;
	var yChunks = size.y / chunkSize.y;

	for(var y = 0; y < yChunks; y++){
		for(var x = 0; x < xChunks; x++){
			createChunk(x, y, chunkMesh);
		}
	}
}

function createChunk(xChunk : int, yChunk : int, mesh : Mesh){
	var chunk : GameObject = GameObject("Chunk(" + xChunk + "|" + yChunk + ")");
	var render : MeshRenderer = chunk.AddComponent(MeshRenderer);
	var filter : MeshFilter = chunk.AddComponent(MeshFilter);
	chunk.transform.position = Vector3(xChunk * chunkSize.x * flatHex.size.x, 0, yChunk * chunkSize.y * flatHex.size.z * 0.75);
	var uvs : Vector2[] = new Vector2[mesh.uv.length];
	for(var y = 0; y < chunkSize.y; y++){
		for(var x = 0; x < chunkSize.x; x++){
			var texUV : Vector2[] = chunkUVs[WorldMapData.getInstance().tiles[chunkSize.x * xChunk + x, chunkSize.y * yChunk + y].matID];
			var offset : int = (x + y * chunkSize.y) * flatHex.uv.Length;
			for(var i : int = 0; i < flatHex.uv.Length; i++){
				uvs[offset + i] = texUV[i];
			}
		}
	}
	filter.mesh = mesh;
	filter.mesh.uv = uvs;
	render.sharedMaterial = mapMaterial;
	chunk.transform.parent = transform;
}

function getChunkMesh(){
	var mesh : Mesh = Mesh();
	var meshes : List.<CombineInstance> = new List.<CombineInstance>();
	for(var y = 0; y < chunkSize.y; y++){
		var odd : boolean = y % 2 == 1;
		for(var x = 0; x < chunkSize.x; x++){
			var matrix : Matrix4x4 = Matrix4x4();
			matrix.SetTRS(Vector3(x * flatHex.size.x + (odd ? flatHex.extents.x : 0), 0, y * flatHex.size.z * 0.75), Quaternion.identity, Vector3.one);
			var combInst = CombineInstance();
			combInst.mesh = flatHex.hexMesh;
			combInst.transform = matrix;
			meshes.Add(combInst);
		}
	}
	var meshArray : CombineInstance[] = meshes.ToArray();
	mesh.CombineMeshes(meshArray, true);
	mesh.RecalculateNormals();
	mesh.RecalculateBounds();
	return mesh;
}

function generate(){
	var data : WorldMapData = WorldMapData.getInstance();
	data.flatHex = flatHex;
	data.size = size;
	data.tiles = new Hexagon[size.x, size.y];
	
	for(var y = 0; y < size.y; y++){
		var odd : boolean = y % 2 == 1;
		for(var x = 0; x < size.x; x++){
			data.tiles[x, y] = Hexagon();
			data.tiles[x, y].position = Vector3(x * flatHex.size.x + (odd ? flatHex.extents.x : 0), 0, y * flatHex.size.z * 0.75);
			data.tiles[x, y].gridPos = Vec2i(x, y);
			data.tiles[x, y].generate(this);
		}
	}
	
	for(var hex : Hexagon in data.tiles){
		hex.assignMaterials(this);
	}
}

function returnDropChance(matID : int, DropChances : List.<DropChance>) : DropChance {
 	for(var e in ice) {
 		if(e == matID)
 			return DropChances[1];
 	}
 	for(var e in ice_mountain) {
 		if(e == matID)
 			return DropChances[2];
 	}
 	for(var e in tundra) {
 		if(e == matID)
 			return DropChances[3];
 	}
 	for(var e in savana) {
 		if(e == matID)
 			return DropChances[4];
 	}
 	for(var e in dry_forest) {
 		if(e == matID)
 			return DropChances[5];
 	}
 	for(var e in dry_mountain) {
 		if(e == matID)
 			return DropChances[6];
 	}
 	for(var e in grassland) {
 		if(e == matID)
 			return DropChances[7];
 	}
 	for(var e in forest) {
 		if(e == matID)
 			return DropChances[8];
 	}
 	for(var e in forest_mountain) {
 		if(e == matID)
 			return DropChances[9];
 	}
 	for(var e in desert) {
 		if(e == matID)
 			return DropChances[10];
 	}
 	for(var e in desert_mountain) {
 		if(e == matID)
 			return DropChances[11];
 	}
 	for(var e in jungle) {
 		if(e == matID)
 			return DropChances[12];
 	}
 	return DropChances[0];
 }

 function spawnPlayer() {
 	var worldData : WorldMapData = WorldMapData.getInstance();
 	var playerSpawned : boolean = false;
 	while(!playerSpawned) {
 		var randX : int = Random.Range(0.0, size.x);
 		var randY : int = Random.Range(0.0, size.y);

 		var contains = false;
 		for(var e in grassland) {
 			if(e == worldData.tiles[randX, randY].matID)
 				contains = true;
 		}
 		for(var e in forest) {
 			if(e == worldData.tiles[randX, randY].matID)
 				contains = true;
 		}
 		if(contains) {
 			FogOfWar.instance.CheckTiles(Vec2i(randX, randY), FogOfWar.instance.visionRange);
 			var spawn : boolean = true;
 			for(var e : Hexagon in FogOfWar.instance.adjacent) {
 				if(e.tileType == "ice" || e.tileType == "desert" || e.tileType == "water")
 					spawn = false;
 			}
 			if(spawn) {
 				var player : GameObject = GameObject.Find("Olaf");
 				var objData : MapObjectCarrier = player.AddComponent(MapObjectCarrier);
 				player.GetComponent.<MoveOnClick>().objData = objData;
				objData.setPosition(Vec2i(randX, randY));
				player.transform.position = worldData.tiles[randX, randY].position; 
				InterfaceData.getInstance().selectedCarrier = objData;
				
				playerSpawned = true;
 			}
 		}

 	}
 }