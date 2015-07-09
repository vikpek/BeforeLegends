using UnityEngine;
using System.Collections;

public class newScript : MonoBehaviour {

    public int i;
    int j = 0;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        i++;
        j++;
        if (Input.GetKeyDown(KeyCode.B))
            print("j: " + j);
	}
}
