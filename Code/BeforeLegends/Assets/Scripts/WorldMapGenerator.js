#pragma strict

var hexRadius : float;
var size : Vec2i;
var chunkSize : Vec2i;
var seed : long;
var erosionScale : float;
var continentScale : float;
var moistureScale : float;
var erosionWeight : float;
var continentWeight : float;
var tileMaterials : Material[];

@HideInInspector
var continentSeed : Vector2;

@HideInInspector
var moistureSeed : Vector2;

@HideInInspector
var erosionSeed : Vector2;

@HideInInspector
var flatHex : FlatHexagon;

@HideInInspector
var chunkHolder : GameObject;

function Awake(){
	flatHex = FlatHexagon(hexRadius);
	Random.seed = seed;
	continentSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
	moistureSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
	erosionSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
}

function Start(){
	generate();
	createChunks();
	spawnObjects();
	spawnCarriers();
}

function spawnObjects(){
	var data : WorldMapData = WorldMapData.getInstance();
	for(var tile : Hexagon in data.tiles){
		if(Random.Range(0f, 1f) <= 0.1){
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
			Instantiate(CharacterModelPrefabs.prefabs[tile.mapObjects[0].appearanceID], tile.position, Quaternion.identity).transform.parent = transform;
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
	var materials : List.<Material> = new List.<Material>();
	chunk.transform.position = Vector3(xChunk * chunkSize.x * flatHex.size.x, 0, yChunk * chunkSize.y * flatHex.size.z * 0.75);
	for(var y = 0; y < chunkSize.y; y++){
		for(var x = 0; x < chunkSize.x; x++){
			materials.Add(tileMaterials[WorldMapData.getInstance().tiles[chunkSize.x * xChunk + x, chunkSize.y * yChunk + y].matID]);
		}
	}
	var materialArray : Material[] = materials.ToArray();
	filter.sharedMesh = mesh;
	render.shadowCastingMode = Rendering.ShadowCastingMode.Off;
	render.receiveShadows = false;
	render.sharedMaterials = materialArray;
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
	mesh.CombineMeshes(meshArray, false);
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
		hex.assignMaterials();
	}
}