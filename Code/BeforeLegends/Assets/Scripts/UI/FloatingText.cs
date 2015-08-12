using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class FloatingText : MonoBehaviour {

    public float fadeOutTime;
    public float offset;

    Color newColor = new Color(1,1,1,1);
    RectTransform originRect;

    // Use this for initialization
    void Start () {
        originRect = gameObject.GetComponent<RectTransform>();
    }
	
	// Update is called once per frame
	void Update () {
        newColor = new Color(1, 1, 1, newColor.a - 0.1F * (Time.deltaTime * fadeOutTime));
        //gameObject.GetComponent<Image>().color = newColor;

        if (newColor.a <= 0) {
            Destroy(gameObject);
        }
    }
}
