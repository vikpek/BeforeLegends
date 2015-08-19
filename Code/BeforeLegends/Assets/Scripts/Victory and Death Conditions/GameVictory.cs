using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameVictory : MonoBehaviour {

    public Image victory;
    public Sprite victorySprite;

    public GameObject[] gameObjectsToDeactivateOnGameOver;

    NewWorld settings;

    bool iLikeCheating = false;

    void Start() {
        if (GameObject.Find("MenuOptions"))
            settings = GameObject.Find("MenuOptions").GetComponent<NewWorld>();
        else {
            settings = new NewWorld();
            settings.foodToWin = 200;
            settings.woodToWin = 200;
            settings.stoneToWin = 200;
        }
    }

    void Update () {
        if (Input.GetKeyDown(KeyCode.B)) {
            iLikeCheating = true;
            print("Shame on you, cheater!");
            CheckRessourcesForWin();
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
	        victory.sprite = victorySprite;
	        victory.enabled = true;
	        victory.preserveAspect = true;
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
            victory.sprite = victorySprite;
            victory.enabled = true;
            victory.preserveAspect = true;
            Time.timeScale = 0;
        }
    }
}
