using UnityEngine;
using System.Collections;

public class UIFunctions : MonoBehaviour {

    int slideState = 0; // 0 ==  nothing, 1 == in, 2 == out
    float slideTime = 0;

    public Vector3 slideDistance;
    public AnimationCurve slide;
    
    RectTransform rTransform;
    Vector3 startPosition;

    // Use this for initialization
	void Start () {
        rTransform = GetComponent<RectTransform>();
        startPosition = rTransform.position;
	}

	// Update is called once per frame
	void Update () {
	    switch(slideState)
        {
            case 1:
                slideTime += Time.deltaTime;
                rTransform.position = new Vector3(startPosition.x - (slide.Evaluate(slideTime) * slideDistance.x), startPosition.y - (slide.Evaluate(slideTime) * slideDistance.y), rTransform.position.z);
                if (slideTime >= slide.keys[slide.keys.Length - 1].time)
                    slideState = 0;
                break;
            case 2:
                slideTime -= Time.deltaTime;
                rTransform.position = new Vector3(startPosition.x - (slide.Evaluate(slideTime) * slideDistance.x), startPosition.y - (slide.Evaluate(slideTime) * slideDistance.y), rTransform.position.z); 
                if (slideTime <= 0)
                    slideState = 0;
                break;
        }
	}

    public void SlideIn()
    {
        slideState = 1;
    }
    public void SlideOut()
    {
        slideState = 2;
    }
}
