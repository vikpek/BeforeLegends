using UnityEngine;
using System.Collections;

public class Ressource : MonoBehaviour {

    public string rType;
    public int rValue;
    public Vec2int pos;

    public float fallSpeed; 
    public bool fall = false;

    void Update() {
	    if(gameObject.transform.position.y > 0 && fall == true) {
		    gameObject.transform.position = new Vector3(gameObject.transform.position.x, gameObject.transform.position.y - fallSpeed, gameObject.transform.position.z);
	    }
    }
}
