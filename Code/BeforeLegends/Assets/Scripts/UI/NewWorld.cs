using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class NewWorld : MonoBehaviour {

    public Slider sSize;
    public Slider sTemperature;
    public Slider sAltitude;
    public Slider sHumidity;

    public Vec2int size;
    public float temperature;
    public float altitude;
    public float humidity;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        switch ((int)sSize.value) {
            case 0:
                size = new Vec2int(32, 32);
                break;
            case 1:
                size = new Vec2int(64, 64);
                break;
            case 2:
                size = new Vec2int(96, 96);
                break;
        }
        temperature = sTemperature.value;
        altitude = sAltitude.value;
        humidity = sHumidity.value;
	}
}
