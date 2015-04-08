import System.Collections.Generic;
import System.Linq;

static var instance : MapManager;

var hexRadius : float;
var mapW : int;
var mapH : int;
var chunkW : int; // /2
var chunkH : int; // /2 
var seed : int;
var erosionScale : float;
var continentScale : float;
var moistureScale : float;
var erosionWeight : float;
var continentWeight : float;

@HideInInspector
var flatHex : FlatHexagon;

@HideInInspector
var chunkMesh : Mesh;

@HideInInspector
var tiles : Hexagon[,];

@HideInInspector
var continentSeed : Vector2;

@HideInInspector
var moistureSeed : Vector2;

@HideInInspector
var erosionSeed : Vector2;

var tileMaterials : Material[];


function Awake(){
	instance = this;
	Random.seed = seed;
	continentSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
	moistureSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
	erosionSeed = Vector2(Random.Range(0f, 65536f), Random.Range(0f, 65536f));
	flatHex = FlatHexagon(hexRadius);
	chunkMesh = getChunkMesh();
	generateMap();
}

function generateMap(){
	tiles = new Hexagon[mapW, mapH];
	for(var y = 0; y < mapH; y++){
		var odd : boolean = y % 2 == 1;
		for(var x = 0; x < mapW; x++){
			tiles[x, y] = Hexagon();
			tiles[x, y].position = Vector3(x * flatHex.size.x + (odd ? flatHex.extents.x : 0), 0, y * flatHex.size.z * 0.75);
			tiles[x, y].xGrid = x;
			tiles[x, y].yGrid = y;
			tiles[x, y].generate();
		}
	}
	
	for(var hex : Hexagon in tiles){
		hex.assignMaterials();
	}
	var xChunks = mapW / chunkW;
	var yChunks = mapH / chunkH;

	for(y = 0; y < yChunks; y++){
		for(x = 0; x < xChunks; x++){
			createChunk(x, y);
		}
	}
}

function getChunkMesh(){
	var mesh : Mesh = Mesh();
	var meshes : List.<CombineInstance> = new List.<CombineInstance>();
	for(y = 0; y < chunkH; y++){
		var odd : boolean = y % 2 == 1;
		for(x = 0; x < chunkW; x++){
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

function createChunk(xChunk : int, yChunk : int){
	var chunk : GameObject = GameObject("Chunk(" + xChunk + "|" + yChunk + ")");
	var render : MeshRenderer = chunk.AddComponent(MeshRenderer);
	var filter : MeshFilter = chunk.AddComponent(MeshFilter);
	var materials : List.<Material> = new List.<Material>();
	chunk.transform.position = Vector3(xChunk * chunkW * flatHex.size.x, 0, yChunk * chunkH * flatHex.size.z * 0.75);
	for(var y = 0; y < chunkH; y++){
		for(var x = 0; x < chunkW; x++){
			materials.Add(tileMaterials[tiles[chunkW * xChunk + x, chunkH * yChunk + y].matID]);
		}
	}
	var materialArray : Material[] = materials.ToArray();
	filter.sharedMesh = chunkMesh;
	render.shadowCastingMode = Rendering.ShadowCastingMode.Off;
	render.receiveShadows = false;
	render.sharedMaterials = materialArray;
}

function findPath(startX : int, startY : int, goalX : int, goalY : int){
	var reachable : List.<PathNode> = new List.<PathNode>();
	var visited : List.<PathNode> = new List.<PathNode>();
	reachable.Add(PathNode(startX, startY));
	
	while(reachable.Count){
		var cheapest : PathNode = reachable.OrderBy(function(node){return node.f;}).ToList()[0];
		visited.Add(cheapest);
		reachable.Remove(cheapest);
	
		for(var hex in tiles[cheapest.x, cheapest.y].getAdjacent()){
			var gotVisited : boolean = false;
			for(var vNode in visited){
				if(hex.xGrid == vNode.x && hex.yGrid == vNode.y){
					gotVisited = true;
					break;
				}
			}
		
			if(hex.traversable && !gotVisited){
				var isReachable : boolean = false;
				for(var rNode in reachable){
					if(hex.xGrid == rNode.x && hex.yGrid == rNode.y){
						isReachable = true;
						rNode.tryAlternative(cheapest);
						break;
					}
				}
			
				if(!isReachable){
					var nNode : PathNode = PathNode(hex.xGrid, hex.yGrid, cheapest, goalX, goalY);
					if(hex.xGrid == goalX && hex.yGrid == goalY) return nNode.toPath();
					reachable.Add(nNode);
				}
			}
		}
	}
	return null;
}