using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PauseMenu : MonoBehaviour {

    public Button pauseMenu;
    bool isPause;

    void Update () {
	    if(Input.GetKeyDown(KeyCode.Escape))
		    TogglePauseMenu();

        if (Input.GetKeyDown(KeyCode.Alpha1))
            Application.LoadLevel("Menu");
    }

    void Resume()
    {
	    TogglePauseMenu();
    }

    void ExitToMainMenu()
    {
	    Time.timeScale = 1;
	    Application.LoadLevel(1);
    }

    void Exit()
    {
	    Application.Quit();
    }

    void TogglePauseMenu()
    {
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
}
