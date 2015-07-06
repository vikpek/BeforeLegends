using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameVictory : MonoBehaviour {

    int scoreToWin;
    Text textVictory;

    GameObject[] gameObjectsToDeactivateOnGameOver;


    void Update () {
	    CheckScoreForWin();
    }

    void CheckScoreForWin() {
	    if(ResourceManager.instance.GetR("Score") >= scoreToWin) {
		    foreach(GameObject gO in gameObjectsToDeactivateOnGameOver) {
			    gO.SetActive(false);
		    }
		    textVictory.gameObject.SetActive(true);
		    Time.timeScale = 0;
	    }
    }
}
