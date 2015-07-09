using UnityEngine;
using System.Collections;

public class SetUISize : MonoBehaviour {

    public Vector2 size;    //added these for Debug purposes
    public Vector2 pos;
    public Vector2 relSize;
    public Vector2 relPos;
    public bool setIsActive;
    public bool shift = false;
    public bool s = false;
    public bool g = false;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        shift = Input.GetKey(KeyCode.LeftShift);
        s = Input.GetKey(KeyCode.S);
        g = Input.GetKey(KeyCode.G);
	    if(setIsActive)
        {
            if(g && shift)
            {
                pos = transform.position;
                size = transform.localScale; 
                relSize = new Vector2(size.x / Screen.width, size.y / Screen.height);
                relPos = new Vector2(pos.x / Screen.width, pos.y / Screen.height);
            }
            if (s && shift)
            {
                transform.position = new Vector3(relPos.x * Screen.width, relPos.y * Screen.height, transform.position.z);
                transform.localScale = new Vector3(relSize.x * Screen.width, relSize.y * Screen.height, transform.localScale.z);
            }
        }
	}
}
