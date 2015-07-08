﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameVictory : MonoBehaviour {

    int scoreToWin;
    Text textVictory;

    GameObject[] gameObjectsToDeactivateOnGameOver;

    NewWorld settings;

    void Start() {
        settings = GameObject.Find("MenuOptions").GetComponent<NewWorld>();
    }

    void Update () {
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
           ResourceManager.instance.GetR("Wood") >= settings.woodToWin) {
            foreach (GameObject gO in gameObjectsToDeactivateOnGameOver) {
                gO.SetActive(false);
            }
            textVictory.gameObject.SetActive(true);
            Time.timeScale = 0;
        }
    }
}
