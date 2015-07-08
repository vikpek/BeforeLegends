using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class NewWorld : MonoBehaviour {

    public Slider sSize;
    public Slider sTemperature;
    public Slider sAltitude;
    public Slider sHumidity;
    public Toggle tWinBuilder;
    public Toggle tWinGlory;

    public Vec2int size;
    public float temperature;
    public float altitude;
    public float humidity;
    public bool winBuilder;
    public bool winGlory;

    public int foodToWin;
    public int stoneToWin;
    public int woodToWin;

    public int scoreToWin;

	// Use this for initialization
	void Awake () {
        DontDestroyOnLoad(this);
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

        winBuilder = tWinBuilder.isOn;
        winGlory = tWinGlory.isOn;
	}
}
