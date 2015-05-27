#pragma strict

var pauseMenu : Button;
var isPause : boolean;

function Update () {
	if(Input.GetKeyDown(KeyCode.Escape))
		TogglePauseMenu();
}

function Resume() {
	TogglePauseMenu();
}

function ExitToMainMenu() {
	Time.timeScale = 1;
	Application.LoadLevel(1);
}

function Exit() {
	Application.Quit();
}

function TogglePauseMenu() {
	if(isPause) {
		pauseMenu.gameObject.SetActive(false);
		Time.timeScale = 1;
	}
	else {
		pauseMenu.gameObject.SetActive(true);
		Time.timeScale = 0;
	}
	isPause = !isPause;
}