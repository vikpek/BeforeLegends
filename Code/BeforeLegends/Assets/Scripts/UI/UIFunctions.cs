using UnityEngine;
using System.Collections;

public class UIFunctions : MonoBehaviour {

    int slideState = 0; // 0 ==  nothing, 1 == down, 2 == up
    float slideYTime = 0;

    public Vector3 slideDistance;
    public AnimationCurve slideY;
    
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
                slideYTime += Time.deltaTime;
                rTransform.position = new Vector3(rTransform.position.x, startPosition.y - (slideY.Evaluate(slideYTime) * slideDistance.y), rTransform.position.z);
                if (slideYTime >= slideY.keys[slideY.keys.Length - 1].time)
                    slideState = 0;
                break;
            case 2:
                slideYTime -= Time.deltaTime;
                rTransform.position = new Vector3(rTransform.position.x, startPosition.y - (slideY.Evaluate(slideYTime) * slideDistance.y), rTransform.position.z); 
                if (slideYTime <= 0)
                    slideState = 0;
                break;
        }
	}

    public void SlideDown()
    {
        slideState = 1;
    }
    public void SlideUp()
    {
        slideState = 2;
    }
}
