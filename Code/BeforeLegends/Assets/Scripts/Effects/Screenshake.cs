using UnityEngine;
//using UnityEditor;
using System.Collections;

public class Screenshake : MonoBehaviour {


    public bool doScreenshake = false;
    public AnimationCurve standardDurationIntensity;
    AnimationCurve durationIntensity;
    float screenShakeTime = 0;
    Vector3 displacement = new Vector3(0, 0, 0);

    void Start()
    {
        GameInfo.instance.assignBattleCameraPos(gameObject);
        durationIntensity = standardDurationIntensity;
    }

    void Update() {
        if(screenShakeTime >= durationIntensity.keys[durationIntensity.length - 1].time)
        {
            screenShakeTime = 0;
            doScreenshake = false;
            gameObject.transform.position = GameInfo.instance.battleCameraPos;
        }

        if(doScreenshake)
        {
            screenShakeTime += Time.deltaTime;
            displacement.x = Random.Range(-durationIntensity.Evaluate(screenShakeTime), durationIntensity.Evaluate(screenShakeTime));
            displacement.y = Random.Range(-durationIntensity.Evaluate(screenShakeTime), durationIntensity.Evaluate(screenShakeTime));
            displacement.z = 0;// Random.Range(-durationIntensity.Evaluate(screenShakeTime), durationIntensity.Evaluate(screenShakeTime));
            gameObject.transform.position = GameInfo.instance.battleCameraPos + displacement;
        }
    }

    public void ShakeIt(AnimationCurve iDurationIntensity)
    {
        if (iDurationIntensity != null)
            durationIntensity = iDurationIntensity;
        else
            durationIntensity = standardDurationIntensity;

        screenShakeTime = 0;
        doScreenshake = true;
    }
}
