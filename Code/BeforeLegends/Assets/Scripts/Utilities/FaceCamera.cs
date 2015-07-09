using UnityEngine;
using System.Collections;

public class FaceCamera : MonoBehaviour {

    public Camera cam;

    void Start() {
        cam = GameObject.Find("World Camera").GetComponent<Camera>();
    }

	// Update is called once per frame
	void Update () {
        transform.LookAt(cam.transform);
	}
}
