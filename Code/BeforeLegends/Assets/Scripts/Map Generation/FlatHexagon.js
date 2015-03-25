#pragma strict

public class FlatHexagon{
	var hexMesh : Mesh;
	var vertices : Vector3[];
	var uv : Vector2[];
	var triangles : int[];

	var extents : Vector3;
	var size : Vector3;
	var center : Vector3;



	function FlatHexagon(radius : float){
		var referenceHex : GameObject = GameObject("ReferenceHex");
		referenceHex.AddComponent(MeshFilter);
		referenceHex.AddComponent(MeshRenderer);
		referenceHex.AddComponent(MeshCollider);
		referenceHex.transform.position = Vector3.zero;
		referenceHex.transform.rotation = Quaternion.identity;
	
		vertices = [
			Vector3(radius * Mathf.Cos(2 * Mathf.PI * (3 + 0.5) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (3 + 0.5) / 6)),
			Vector3(radius * Mathf.Cos(2 * Mathf.PI * (2 + 0.5) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (2 + 0.5) / 6)),
			Vector3(radius * Mathf.Cos(2 * Mathf.PI * (1 + 0.5) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (1 + 0.5) / 6)),
			Vector3(radius * Mathf.Cos(2 * Mathf.PI * (0 + 0.5) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (0 + 0.5) / 6)),
			Vector3(radius * Mathf.Cos(2 * Mathf.PI * (5 + 0.5) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (5 + 0.5) / 6)),
			Vector3(radius * Mathf.Cos(2 * Mathf.PI * (4 + 0.5) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (4 + 0.5) / 6))
		];
	
		uv = [
			Vector2(0.5 + 0.5 * Mathf.Cos(2 * Mathf.PI * (3 + 0.5) / 6), 0.5 + 0.5 * Mathf.Sin(2 * Mathf.PI * (3 + 0.5) / 6)),
			Vector2(0.5 + 0.5 * Mathf.Cos(2 * Mathf.PI * (2 + 0.5) / 6), 0.5 + 0.5 * Mathf.Sin(2 * Mathf.PI * (2 + 0.5) / 6)),
			Vector2(0.5 + 0.5 * Mathf.Cos(2 * Mathf.PI * (1 + 0.5) / 6), 0.5 + 0.5 * Mathf.Sin(2 * Mathf.PI * (1 + 0.5) / 6)),
			Vector2(0.5 + 0.5 * Mathf.Cos(2 * Mathf.PI * (0 + 0.5) / 6), 0.5 + 0.5 * Mathf.Sin(2 * Mathf.PI * (0 + 0.5) / 6)),
			Vector2(0.5 + 0.5 * Mathf.Cos(2 * Mathf.PI * (5 + 0.5) / 6), 0.5 + 0.5 * Mathf.Sin(2 * Mathf.PI * (5 + 0.5) / 6)),
			Vector2(0.5 + 0.5 * Mathf.Cos(2 * Mathf.PI * (4 + 0.5) / 6), 0.5 + 0.5 * Mathf.Sin(2 * Mathf.PI * (4 + 0.5) / 6))
		];
	
		triangles = [
			1, 5, 0,
			1, 4, 5,
			1, 2, 4,
			2, 3, 4
		];
	
		hexMesh = Mesh();
		hexMesh.vertices = vertices;
		hexMesh.uv = uv;
		hexMesh.triangles = triangles;
		hexMesh.RecalculateNormals();
	
		referenceHex.GetComponent(MeshFilter).mesh = hexMesh;
		referenceHex.GetComponent(MeshFilter).mesh.RecalculateNormals();
		referenceHex.GetComponent(MeshCollider).sharedMesh = hexMesh;
	
		extents = referenceHex.GetComponent.<Collider>().bounds.extents;
		size = referenceHex.GetComponent.<Collider>().bounds.size;
		center = referenceHex.GetComponent.<Collider>().bounds.center;
		GameObject.Destroy(referenceHex);
	}
}