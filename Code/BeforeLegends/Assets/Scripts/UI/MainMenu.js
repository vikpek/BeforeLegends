#pragma strict

function StartGame() {
	Time.timeScale = 1;
	Application.LoadLevel(2);
}

function ExitGame() {
	Application.Quit();
}