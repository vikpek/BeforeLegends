import System.Collections.Generic;
import System.Linq;

static var instance : MapManager;

var hexRadius : float;
var mapW : int;
var mapH : int;
var chunkW : int;
var chunkH : int;
var seed : int;
var erosionScale : float;
var continentScale : float;
var moistureScale : float;
var erosionWeight : float;
var continentWeight : float;

@HideInInspector
var flatHex : FlatHexagon;

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

function createChunk(xChunk : int, yChunk : int){
	var chunk : GameObject = GameObject("Chunk(" + xChunk + "|" + yChunk + ")");
	var render : MeshRenderer = chunk.AddComponent(MeshRenderer);
	var filter : MeshFilter = chunk.AddComponent(MeshFilter);
	var meshes : List.<CombineInstance> = new List.<CombineInstance>();
	var materials : List.<Material> = new List.<Material>();
	chunk.transform.position = Vector3(xChunk * chunkW * flatHex.size.x, 0, yChunk * chunkH * flatHex.size.z * 0.75);
	for(var y = 0; y < chunkH; y++){
		for(var x = 0; x < chunkW; x++){
			var hex : Hexagon = tiles[chunkW * xChunk + x, chunkH * yChunk + y];
			var matrix : Matrix4x4 = Matrix4x4();
			matrix.SetTRS(hex.position - chunk.transform.position, Quaternion.identity, Vector3.one);
			var combInst = CombineInstance();
			combInst.mesh = flatHex.hexMesh;
			combInst.transform = matrix;
			meshes.Add(combInst);
			materials.Add(tileMaterials[hex.matID]);
		}
	}
	var meshArray : CombineInstance[] = meshes.ToArray();
	var materialArray : Material[] = materials.ToArray();
	filter.mesh.CombineMeshes(meshArray, false);
	filter.mesh.RecalculateNormals();
	filter.mesh.RecalculateBounds();
	render.materials = materialArray;
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