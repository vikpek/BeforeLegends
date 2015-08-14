using UnityEngine;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour {
    public GameObject[] deactivateAtPause;
    public Image greyOutWM;
    public Image greyOutBM;
    private bool isPause = false;
    private bool isHelp = false;
    public Sprite wmHelp;
    public Sprite bmHelp;
    public GameObject pauseMenu;
    public Image tutorialScreenWM;
    public Image tutorialScreenBM;

    private Image greyOut;
    private Image tutorialScreen;

    private void Update() {
        if (Input.GetKeyDown(KeyCode.Escape) && isHelp == false) {
            SetMapVariables();
            TogglePauseMenu();
        }


        if (isHelp == true && Input.anyKey) {
            SetMapVariables();
            ToggleHelpScreen();
        }
            

        /*if (Input.GetKeyDown(KeyCode.Alpha1))
            Application.LoadLevel("Menu");*/
    }

    public void Resume() {
        TogglePauseMenu();
    }

    public void LoadLevel(string sceneName) {
        Time.timeScale = 1;
        Application.LoadLevel(sceneName);
    }

    public void Exit() {
        Application.Quit();
    }

    public void Tutorial() {
        ToggleHelpScreen();
    }

    private void TogglePauseMenu() {
        if (isPause) {
            pauseMenu.gameObject.SetActive(false);
            greyOut.enabled = false;
            Time.timeScale = 1;
            foreach (var gO in deactivateAtPause) {
                gO.SetActive(true);
            }
        }
        else {
            pauseMenu.gameObject.SetActive(true);
            greyOut.enabled = true;
            Time.timeScale = 0;
            foreach (var gO in deactivateAtPause) {
                gO.SetActive(false);
            }
        }
        isPause = !isPause;
    }

    private void ToggleHelpScreen() {
        if (GameStateManager.instance.state == 1)
            tutorialScreen.sprite = bmHelp;
        else
            tutorialScreen.sprite = wmHelp;

        if (UnitInfo.Instance.unitInfo.activeSelf == true)
            UnitInfo.Instance.DisplayUnitInfo(UnitInfo.Instance.currentActive);
        
        if (isHelp) {
            greyOut.enabled = false;
            tutorialScreen.enabled = false;
            Time.timeScale = 1;
            foreach (var gO in deactivateAtPause) {
                gO.SetActive(true);
            }
        }
        else {
            TogglePauseMenu();
            greyOut.enabled = true;
            tutorialScreen.enabled = true;
            Time.timeScale = 0;
            foreach (var gO in deactivateAtPause) {
                gO.SetActive(false);
            }
        }
        isHelp = !isHelp;
    }

    private void SetMapVariables() {
        if (GameStateManager.instance.state == 1) {
            greyOut = greyOutBM;
            tutorialScreen = tutorialScreenBM;
        }
        else {
            greyOut = greyOutWM;
            tutorialScreen = tutorialScreenWM;
        }
    }
}