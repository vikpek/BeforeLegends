using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class VictoryProgress : MonoBehaviour {

    public ResourceManager rm;
    public Image gloryBar;
    public Image woodBar;
    public Image stoneBar;
    public Image foodBar;
    public GameObject victoryProgress;
    public GameObject gloryWinCon;
    public GameObject ConqWinCon;

    public NewWorld settings;

    // Use this for initialization
    void Start() {
        if (GameObject.Find("MenuOptions")) {
            settings = GameObject.Find("MenuOptions").GetComponent<NewWorld>();
            victoryProgress.SetActive(true);

            if (settings.winGlory)
                gloryWinCon.SetActive(true);
            if (settings.winBuilder)
                ConqWinCon.SetActive(true);
        }


    }

    // Update is called once per frame
    void Update () {
        if (!settings)
            return;
        gloryBar.fillAmount = (float)rm.GetR("Glory")/ (float)settings.scoreToWin;
        woodBar.fillAmount = (float)rm.GetR("Wood") / (float)settings.woodToWin;
        stoneBar.fillAmount = (float)rm.GetR("Stone") / (float)settings.stoneToWin;
        foodBar.fillAmount = (float)rm.GetR("Food") / (float)settings.foodToWin;
    }
}
