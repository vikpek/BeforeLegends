using UnityEngine;
using System.Collections;


[ExecuteInEditMode]
public class SetUISize : MonoBehaviour {

    public Vector2 size;    //added these for Debug purposes
    public Vector2 pos;
    public Vector2 relSize;
    public Vector2 relPos;
    public bool setIsActive;
    public bool shift = false;
    public bool s = false;
    public bool g = false;
    public int screenWidth;
    public int screenHeight;
    public bool resized = true;
    public bool getRelSize = false;

	// Use this for initialization
    void Start()
    {
        screenWidth = Screen.width;
        screenHeight = Screen.height;
	}
    // Update is called once per frame
	void Update () {

        //check for input
        shift = Input.GetKey(KeyCode.LeftShift);
        s = Input.GetKey(KeyCode.S);
        g = Input.GetKey(KeyCode.G);

	    if(setIsActive)
        {
            if (g && shift || getRelSize)
            {
                pos = transform.position;
                size = transform.localScale; 
                relSize = new Vector2(size.x / Screen.width, size.y / Screen.height);
                relPos = new Vector2(pos.x / Screen.width, pos.y / Screen.height);
                getRelSize = false;
            }
        }
        else
        {
            if (screenWidth != Screen.width || screenHeight != Screen.height)
            {
                resized = true;
            }

            if ((s && shift) || resized)
            {
                ResizeUIStuff();
            }

            resized = false;
        }
	}

    public void ResizeUIStuff()
    {
        if (GetComponent<UIFunctions>() == null)
            return;
        screenWidth = Screen.width;
        screenHeight = Screen.height;
        transform.position = new Vector3(relPos.x * Screen.width, relPos.y * Screen.height, transform.position.z);
        transform.localScale = new Vector3(relSize.x * Screen.width, relSize.y * Screen.height, transform.localScale.z);
        GetComponent<UIFunctions>().SetStartPos(transform.position);
        GetComponent<UIFunctions>().SetSlideDist(transform.localScale);
    }
}
