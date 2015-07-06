using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UIFunctions : MonoBehaviour {

    int slideState = 0; // 0 ==  nothing, 1 == In, 2 == Out
    int fillState = 0; // 0 ==  nothing, 1 == Fill, 2 == Unfill
    float slideTime = 0;
    float fillTime = 0;

    public Vector3 slideDistance;
    public AnimationCurve slide;
    public AnimationCurve fill;
    
    RectTransform rTransform;
    Image image;
    Vector3 startPosition;
    public bool slideX;
    public bool fillAndUnfill = false;

	// Use this for initialization
    void Start()
    {
        rTransform = GetComponent<RectTransform>();
        image = GetComponent<Image>();
        startPosition = rTransform.position;
	}

	// Update is called once per frame
	void Update () {
        if(Input.GetKeyDown(KeyCode.H))
        {
            print("slideY.Evaluate(slideYTime) * slideDistance.y: " + slide.Evaluate(slideTime) * slideDistance.y);
        }
        if (slideX)
        {
	        switch(slideState)
            {
                case 1:
                    slideTime += Time.deltaTime;
                    rTransform.position = new Vector3(startPosition.x - (slide.Evaluate(slideTime) * slideDistance.x), rTransform.position.y, rTransform.position.z);
                    if (slideTime >= slide.keys[slide.keys.Length - 1].time)
                    {
                        slideState = 0;
                        slideTime = slide.keys[slide.keys.Length - 1].time;
                    }
                    break;
                case 2:
                    slideTime -= Time.deltaTime;
                    rTransform.position = new Vector3(startPosition.x - (slide.Evaluate(slideTime) * slideDistance.x), rTransform.position.y, rTransform.position.z); 
                    if (slideTime <= 0)
                    {
                        slideState = 0;
                        slideTime = 0;
                    }
                    break;
            }
        } 
        else
        {
            switch (slideState)
            {
                case 1:
                    slideTime += Time.deltaTime;
                    rTransform.position = new Vector3(rTransform.position.x, startPosition.y - (slide.Evaluate(slideTime) * slideDistance.y), rTransform.position.z);
                    if (slideTime >= slide.keys[slide.keys.Length - 1].time)
                    {
                        slideState = 0;
                        slideTime = slide.keys[slide.keys.Length - 1].time;
                    }
                    break;
                case 2:
                    slideTime -= Time.deltaTime;
                    rTransform.position = new Vector3(rTransform.position.x, startPosition.y - (slide.Evaluate(slideTime) * slideDistance.y), rTransform.position.z);
                    if (slideTime <= 0)
                    {
                        slideState = 0;
                        slideTime = 0;
                    }
                    break;
            }
        }
        if (fillAndUnfill)
        {
            switch (fillState)
            {
                case 1:
                    fillTime += Time.deltaTime;
                    image.fillAmount = fill.Evaluate(fillTime);
                    if (fillTime >= fill.keys[fill.keys.Length - 1].time)
                    {
                        fillState = 0;
                        fillTime = fill.keys[fill.keys.Length - 1].time;
                    }
                    break;
                case 2:
                    fillTime -= Time.deltaTime;
                    image.fillAmount = fill.Evaluate(fillTime);
                    if (fillTime <= 0)
                    {
                        fillState = 0;
                        fillTime = 0;
                    }
                    break;
        }
        }
	}

    public void SlideIn()
    {
        slideState = 1;
        fillState = 1;
    }
    public void SlideOut()
    {
        slideState = 2;
        fillState = 2;
    }

    
}
