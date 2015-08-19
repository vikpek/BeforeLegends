using UnityEngine;
using System.Collections;

public class Lighning : MonoBehaviour {

    Light light;

    public AnimationCurve yPositionOverTime;
    public AnimationCurve intensityOverTime;

    Vector3 startPosition;

    bool doALightning = false;
    float actualLightningTime = 0.0f;

	// Use this for initialization
	void Start () {
        light = GetComponent<Light>();
        startPosition = transform.position;
	}
	

	// Update is called once per frame
	void Update () {
        if(Input.GetKeyDown(KeyCode.T))
        {
            actualLightningTime = 0;
        }

        actualLightningTime += Time.deltaTime;
        transform.position = new Vector3(startPosition.x, yPositionOverTime.Evaluate(actualLightningTime), startPosition.z);
        light.intensity = intensityOverTime.Evaluate(actualLightningTime) * -1;
	}
}
