using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameVictory : MonoBehaviour {

    public Text textVictory;

    public GameObject[] gameObjectsToDeactivateOnGameOver;

    NewWorld settings;

    bool iLikeCheating = false;

    void Start() {
        if(GameObject.Find("MenuOptions"))
            settings = GameObject.Find("MenuOptions").GetComponent<NewWorld>();
    }

    void Update () {
        if (Input.GetKeyDown(KeyCode.B)) {
            iLikeCheating = true;
            print("Shame on you, cheater!");
        }
        if (settings == null)
            return;
        if (settings.winGlory)
            CheckScoreForWin();
        if (settings.winBuilder)
            CheckRessourcesForWin();
    }

    void CheckScoreForWin() {
	    if(ResourceManager.instance.GetR("Score") >= settings.scoreToWin) {
		    foreach(GameObject gO in gameObjectsToDeactivateOnGameOver) {
			    gO.SetActive(false);
		    }
		    textVictory.gameObject.SetActive(true);
		    Time.timeScale = 0;
	    }
    }

    void CheckRessourcesForWin() {
        if(ResourceManager.instance.GetR("Food") >= settings.foodToWin &&
           ResourceManager.instance.GetR("Stone") >= settings.stoneToWin &&
           ResourceManager.instance.GetR("Wood") >= settings.woodToWin || iLikeCheating == true) {
            foreach (GameObject gO in gameObjectsToDeactivateOnGameOver) {
                gO.SetActive(false);
            }
            //textVictory.gameObject.SetActive(true);
            Time.timeScale = 0;
        }
    }
}
