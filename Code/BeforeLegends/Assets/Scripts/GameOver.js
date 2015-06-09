#pragma strict

var gameOver : UI.Text;
var gameObjectsToDeactivateOnGameOver : GameObject[];
@HideInInspector
var activePlayers : GameObject[];

function Update() {
	activePlayers = GameObject.FindGameObjectsWithTag("Player");
	if(activePlayers.Length == 0) {
		for(var gO : GameObject in gameObjectsToDeactivateOnGameOver) {
			gO.SetActive(false);
		}
		gameOver.gameObject.SetActive(true);
		Time.timeScale = 0;
	}
}