using UnityEngine;
using System.Collections;

public class MouseMovement : MonoBehaviour {

    public float dampen;

    Vector3 nextPos;
    public float mouseScrollDeltaY;
    public float minY;
    public float maxY;
    public float xOffsetMultiplier;
    public float zOffsetMultiplierMin;
    public float zOffsetMultiplierMax;

    void Awake(){
	    nextPos = transform.position;
    }

    void Update () {
        mouseScrollDeltaY = 0;
        mouseScrollDeltaY = -Input.mouseScrollDelta.y * 1.5f;


        if(nextPos.y + mouseScrollDeltaY < minY && mouseScrollDeltaY < 0)
            nextPos.y = minY;
        else if(nextPos.y + mouseScrollDeltaY > maxY && mouseScrollDeltaY > 0)
            nextPos.y = maxY;
        else
            nextPos.y += mouseScrollDeltaY;

        Vector2 delta = Vector2.zero;

	    if((Input.mousePosition.x > Screen.width - 25  || Input.GetKey(KeyCode.D)  || Input.GetKey(KeyCode.RightArrow)) && nextPos.x < WorldMapGenerator.instance.size.x * xOffsetMultiplier){
		    delta.x += transform.right.x;
		    delta.y += transform.right.z;
		    //nextPos.x += nextPos.y * Time.deltaTime;
	    }else if((Input.mousePosition.x < 25 || Input.GetKey(KeyCode.A)  || Input.GetKey(KeyCode.LeftArrow)) && nextPos.x > 0){
		    delta.x -= transform.right.x;
		    delta.y -= transform.right.z;
	    }

	    if((Input.mousePosition.y > Screen.height - 25 || Input.GetKey(KeyCode.W)  || Input.GetKey(KeyCode.UpArrow)) && nextPos.z < WorldMapGenerator.instance.size.y - ((transform.position.y - maxY) * zOffsetMultiplierMax)){
		    delta.x += transform.up.x;
		    delta.y += transform.up.z;
	    }else if((Input.mousePosition.y < 25 || Input.GetKey(KeyCode.S)  || Input.GetKey(KeyCode.DownArrow)) && nextPos.z > -transform.position.y * zOffsetMultiplierMin){
		    delta.x -= transform.up.x;
		    delta.y -= transform.up.z;
	    }
	    delta *= nextPos.y * Time.deltaTime;
	    nextPos.x += delta.x;
	    nextPos.z += delta.y;
	
	
	    transform.position = new Vector3
        ( 
            Mathf.Lerp(transform.position.x, nextPos.x, Time.deltaTime * dampen), 
            Mathf.Lerp(transform.position.y, nextPos.y, Time.deltaTime * dampen),
	        Mathf.Lerp(transform.position.z, nextPos.z, Time.deltaTime * dampen)
        ); 
    }
}
