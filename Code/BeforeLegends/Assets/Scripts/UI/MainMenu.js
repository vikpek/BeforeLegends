#pragma strict

function StartGame() {
	Application.LoadLevel(2);
	Time.timeScale = 1;
}

function ExitGame() {
	Application.Quit();
}