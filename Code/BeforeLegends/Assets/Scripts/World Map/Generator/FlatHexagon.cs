using UnityEngine;
using System.Collections;

public class FlatHexagon{
    public Mesh hexMesh;
    public Vector3[] vertices;
    public Vector2[] uv;
	public int[] triangles;

    public Vector3 extents;
    public Vector3 size;
    public Vector3 center;



	public FlatHexagon(float radius){
		GameObject referenceHex = new GameObject("ReferenceHex");
		referenceHex.AddComponent<MeshFilter>();
		referenceHex.AddComponent<MeshRenderer>();
		referenceHex.AddComponent<MeshCollider>();
		referenceHex.transform.position = Vector3.zero;
		referenceHex.transform.rotation = Quaternion.identity;
	
		vertices = new Vector3[]{
			new Vector3(radius * Mathf.Cos(2 * Mathf.PI * (3 + 0.5f) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (3 + 0.5f) / 6)),
			new Vector3(radius * Mathf.Cos(2 * Mathf.PI * (2 + 0.5f) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (2 + 0.5f) / 6)),
			new Vector3(radius * Mathf.Cos(2 * Mathf.PI * (1 + 0.5f) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (1 + 0.5f) / 6)),
			new Vector3(radius * Mathf.Cos(2 * Mathf.PI * (0 + 0.5f) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (0 + 0.5f) / 6)),
			new Vector3(radius * Mathf.Cos(2 * Mathf.PI * (5 + 0.5f) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (5 + 0.5f) / 6)),
			new Vector3(radius * Mathf.Cos(2 * Mathf.PI * (4 + 0.5f) / 6), 0, radius * Mathf.Sin(2 * Mathf.PI * (4 + 0.5f) / 6))
        };
	
		uv = new Vector2[]{
			new Vector2(0.5f + 0.5f * Mathf.Cos(2 * Mathf.PI * (3 + 0.5f) / 6), 0.5f + 0.5f * Mathf.Sin(2 * Mathf.PI * (3 + 0.5f) / 6)),
			new Vector2(0.5f + 0.5f * Mathf.Cos(2 * Mathf.PI * (2 + 0.5f) / 6), 0.5f + 0.5f * Mathf.Sin(2 * Mathf.PI * (2 + 0.5f) / 6)),
			new Vector2(0.5f + 0.5f * Mathf.Cos(2 * Mathf.PI * (1 + 0.5f) / 6), 0.5f + 0.5f * Mathf.Sin(2 * Mathf.PI * (1 + 0.5f) / 6)),
			new Vector2(0.5f + 0.5f * Mathf.Cos(2 * Mathf.PI * (0 + 0.5f) / 6), 0.5f + 0.5f * Mathf.Sin(2 * Mathf.PI * (0 + 0.5f) / 6)),
			new Vector2(0.5f + 0.5f * Mathf.Cos(2 * Mathf.PI * (5 + 0.5f) / 6), 0.5f + 0.5f * Mathf.Sin(2 * Mathf.PI * (5 + 0.5f) / 6)),
			new Vector2(0.5f + 0.5f * Mathf.Cos(2 * Mathf.PI * (4 + 0.5f) / 6), 0.5f + 0.5f * Mathf.Sin(2 * Mathf.PI * (4 + 0.5f) / 6))
		};
	
		triangles = new int[]{
			1, 5, 0,
			1, 4, 5,
			1, 2, 4,
			2, 3, 4
        };
	
		hexMesh = new Mesh();
		hexMesh.vertices = vertices;
		hexMesh.uv = uv;
		hexMesh.triangles = triangles;
		hexMesh.RecalculateNormals();
	
		referenceHex.GetComponent<MeshFilter>().mesh = hexMesh;
		referenceHex.GetComponent<MeshFilter>().mesh.RecalculateNormals();
		referenceHex.GetComponent<MeshCollider>().sharedMesh = hexMesh;
	
		extents = referenceHex.GetComponent<Collider>().bounds.extents;
		size = referenceHex.GetComponent<Collider>().bounds.size;
		center = referenceHex.GetComponent<Collider>().bounds.center;
		GameObject.Destroy(referenceHex);
	}
}
