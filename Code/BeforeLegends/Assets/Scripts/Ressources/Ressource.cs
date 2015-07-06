using UnityEngine;
using System.Collections;

public class Ressource : MonoBehaviour {

    public string rType;
    public int rValue;
    public Vec2Int pos;

    public float fallSpeed; 
    public bool fall = false;

    function Update() {
	    if(gameObject.transform.position.y > 0 && fall == true) {
		    gameObject.transform.position.y = gameObject.transform.position.y - fallSpeed;
	    }
    }
}
