#pragma strict

import System.Collections.Generic;

var mapMaterial : Material;
var hexRadius : float;
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

@HideInInspector 
var chunkTexture : Texture2D;

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
	flatHex = FlatHexagon(hexRadius);
	setSeeds();
	packTextures();
	generate();
	createChunks();
	spawnObjects();
	spawnCarriers();
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

function spawnObjects(){
	var data : WorldMapData = WorldMapData.getInstance();
	for(var tile : Hexagon in data.tiles){
		if(tile.traversable && Random.Range(0f, 1f) <= 0.025){
			var obj : MapObjectData = ScriptableObject.CreateInstance(MapObjectData) as MapObjectData;
			obj.appearanceID = 0;
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