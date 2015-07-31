using UnityEngine;
using System.Collections;

public class MaskOffset : MonoBehaviour {

    // Use this for initialization
    //Vec2int origin =  new Vec2int(60, 80);
    Vector2 origin = new Vector2(47.5f, 70);
    float offsetPerUnit = 0.05f;
    public Transform olafTransform;

	void Start () {
        olafTransform = transform.parent.gameObject.GetComponent<Transform>();
	}
	
	// Update is called once per frame
	void Update () {
        //Debug.Log(olafTransform.position.x + "\n" + olafTransform.position.z);
        gameObject.transform.localPosition = new Vector3((olafTransform.position.x - origin.x) * offsetPerUnit,
                                                          0,
                                                         (olafTransform.position.z - origin.y) * offsetPerUnit);
	}
}
