using UnityEngine;
using System.Collections;

public class UIFunctions : MonoBehaviour {

    int slideState = 0; // 0 ==  nothing, 1 == in, 2 == out
    bool shopOpen = false;
    float slideTime = 0;

    public Vector3 startSlideDistancePercentage;
    Vector3 slideDistance = new Vector3(0, 0, 0);
    public AnimationCurve slide;

    public RectTransform rTransform;
    Vector3 startPosition;

    // Use this for initialization
	void Start () {
        rTransform = GetComponent<RectTransform>();
        startPosition = rTransform.position;
        GetComponent<SetUISize>().ResizeUIStuff();
	}

	// Update is called once per frame
	void Update () {
	    switch(slideState)
        {
            case 1:
                slideTime += Time.deltaTime;
                rTransform.position = new Vector3(startPosition.x - (slide.Evaluate(slideTime) * slideDistance.x), startPosition.y - (slide.Evaluate(slideTime) * slideDistance.y), rTransform.position.z);
                if (slideTime >= slide.keys[slide.keys.Length - 1].time) {
                    slideState = 0;
                    shopOpen = true;
                }
                break;
            case 2:
                slideTime -= Time.deltaTime;
                rTransform.position = new Vector3(startPosition.x - (slide.Evaluate(slideTime) * slideDistance.x), startPosition.y - (slide.Evaluate(slideTime) * slideDistance.y), rTransform.position.z);
                if (slideTime <= 0) {
                    slideState = 0;
                    shopOpen = false;
                }
                break;
        }
	}

    public void SetStartPos(Vector3 newStartPos)
    {
        startPosition = newStartPos;
    }

    public void SetSlideDist(Vector3 newStartSlideDist) // sry for that variablename, tired
    {
        newStartSlideDist.x *= startSlideDistancePercentage.x;
        newStartSlideDist.y *= startSlideDistancePercentage.y;
        newStartSlideDist.z *= startSlideDistancePercentage.z;
        slideDistance.x = rTransform.rect.width * newStartSlideDist.x;
        slideDistance.y = rTransform.rect.height * newStartSlideDist.y;
    }

    public void SlideIn()
    {
        slideState = 1;
    }
    public void SlideOut()
    {
        slideState = 2;
    }
    public void ToggleSlideState() {
        AudioMaster.instance.SlideUIElementA030Play();
        if (shopOpen == false)
            slideState = 1;
        else
            slideState = 2;
    }

    public void ToggleSlideStateNoSound() {
        if (shopOpen == false)
            slideState = 1;
        else
            slideState = 2;
    }

    public void ToggleSlideState(UIFunctions child) {
        child.ToggleSlideStateNoSound();
        AudioMaster.instance.SlideUIElementA030Play();
        if (shopOpen == false)
            slideState = 1;
        else
            slideState = 2;
    }
}
