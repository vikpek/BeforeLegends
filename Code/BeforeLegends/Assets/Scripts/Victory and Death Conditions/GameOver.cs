using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameOver : MonoBehaviour {
	public Image gameOver;
    public Sprite gameOverImage;

	public GameObject[] gameObjectsToDeactivateOnGameOver;

	public GameObject[] activePlayers;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		activePlayers = GameObject.FindGameObjectsWithTag("Player");
		if(activePlayers.Length == 0) {
			foreach(GameObject gO in gameObjectsToDeactivateOnGameOver) {
				gO.SetActive(false);
			}
			//gameOver.gameObject.SetActive(true);
		    gameOver.sprite = gameOverImage;
		    gameOver.enabled = true;
			Time.timeScale = 0;
		}
	}
}