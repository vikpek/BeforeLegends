#pragma strict

var scoreToWin : int;
var textVictory : UI.Text;

var gameObjectsToDeactivateOnGameOver : GameObject[];


function Update () {
	CheckScoreForWin();
}

function CheckScoreForWin() {
	if(RessourceMaster.instance.valueScore >= scoreToWin) {
		for(var gO : GameObject in gameObjectsToDeactivateOnGameOver) {
			gO.SetActive(false);
		}
		textVictory.gameObject.SetActive(true);
		Time.timeScale = 0;
	}
}