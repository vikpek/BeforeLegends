using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameOver : MonoBehaviour {
	public Image gameOver;
    public Sprite gameOverImage;

	public GameObject[] gameObjectsToDeactivateOnGameOver;

	public GameObject[] activePlayers;


    private bool fuckyou = false;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	    if (Input.GetKeyDown(KeyCode.Y)) {
            fuckyou = true;
            print("Why would you cheat to lose? Fucking retard!");
	    }
	        
		activePlayers = GameObject.FindGameObjectsWithTag("Player");
		if(activePlayers.Length == 0 || fuckyou) {
			foreach(GameObject gO in gameObjectsToDeactivateOnGameOver) {
				gO.SetActive(false);
			}
			//gameOver.gameObject.SetActive(true);
		    gameOver.sprite = gameOverImage;
		    gameOver.enabled = true;
		    gameOver.preserveAspect = true;
			Time.timeScale = 0;
		}
	}
}