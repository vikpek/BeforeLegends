using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PauseMenu : MonoBehaviour {

    public GameObject pauseMenu;
    bool isPause;
    public GameObject[] deactivateAtPause;

    void Update () {
        if (Input.GetKeyDown(KeyCode.Escape))
            TogglePauseMenu();

        if (Input.GetKeyDown(KeyCode.Alpha1))
            Application.LoadLevel("Menu");
    }

    public void Resume()
    {
	    TogglePauseMenu();
    }

    public void LoadLevel(string sceneName)
    {
	    Time.timeScale = 1;
        Application.LoadLevel(sceneName);
    }

    public void Exit()
    {
	    Application.Quit();
    }

    void TogglePauseMenu()
    {
	    if(isPause) {
		    pauseMenu.gameObject.SetActive(false);
		    Time.timeScale = 1;
            foreach(GameObject gO in deactivateAtPause) {
                gO.SetActive(true);
            }
	    }
	    else {
		    pauseMenu.gameObject.SetActive(true);
		    Time.timeScale = 0;
            foreach (GameObject gO in deactivateAtPause) {
                gO.SetActive(false);
            }
        }
	    isPause = !isPause;
    }
}
