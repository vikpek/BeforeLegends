#pragma strict

static var instance : BattleMapGenerator;

var width : int;
var height : int;

function Awake(){
	if(!instance) instance = this;
	GetComponent(MeshFilter).mesh = generateMesh();
}

function generateMesh(){
	var mesh : Mesh = Mesh();
	var meshes : List.<CombineInstance> = new List.<CombineInstance>();
	var flatHex = FlatHexagon(1);
	for(var y = 0; y < height; y++){
		var odd : boolean = y % 2 == 1;
		for(var x = 0; x < width; x++){
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