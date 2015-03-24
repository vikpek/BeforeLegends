#pragma strict
import System.Collections.Generic;

static var instance : MapManager;

var hexRadius : float;
var mapW : int;
var mapH : int;
var chunkW : int;
var chunkH : int;

@HideInInspector
var flatHex : FlatHexagon;

@HideInInspector
var tiles : Hexagon[,];

@HideInInspector
var seed : Vector2;


var mat0 : Material;
var mat1 : Material;
var mat2 : Material;
var mat3 : Material;
var mat4 : Material;
var mat5 : Material;
var mat6 : Material;
var mat7 : Material;
var mat8 : Material;


function Awake(){
	seed = Vector2(Random.Range(0, 40), Random.Range(0, 40));
	instance = this;
	flatHex = FlatHexagon(hexRadius);
	generateMap();
}

function generateMap(){
	tiles = new Hexagon[mapW, mapH];
	for(var y = 0; y < mapH; y++){
		var odd : boolean = y % 2 == 0;
		for(var x = 0; x < mapW; x++){
			tiles[x, y] = Hexagon();
			tiles[x, y].position = Vector3(x * flatHex.size.x + (odd ? flatHex.extents.x : 0), 0, y * flatHex.size.z * 0.75);
			tiles[x, y].xGrid = x;
			tiles[x, y].yGrid = y;
			tiles[x, y].generate();
		}
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
	var collider : MeshCollider = chunk.AddComponent(MeshCollider);
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
			
			switch(hex.matID){
				case 0 :
					materials.Add(mat0);
					break;
				case 1 :
					materials.Add(mat1);
					break;
				case 2 :
					materials.Add(mat2);
					break;
				case 3 :
					materials.Add(mat3);
					break;
				case 4 :
					materials.Add(mat4);
					break;
				case 5 :
					materials.Add(mat5);
					break;
				case 6 :
					materials.Add(mat6);
					break;
				case 7 :
					materials.Add(mat7);
					break;
				case 8 :
					materials.Add(mat8);
					break;
			}
		}
	}
	var meshArray : CombineInstance[] = meshes.ToArray();
	var materialArray : Material[] = materials.ToArray();
	filter.mesh.CombineMeshes(meshArray, false);
	collider.sharedMesh = filter.mesh;
	filter.mesh.RecalculateNormals();
	filter.mesh.RecalculateBounds();
	render.materials = materialArray;
}