using UnityEngine;
using System.Collections;

public class FaceCamera : MonoBehaviour {

    public Camera cam; 
	
	// Update is called once per frame
	void Update () {
        transform.LookAt(cam.transform);
	}
}
