using UnityEngine;
using System.Collections;

public class BattleParameters : MonoBehaviour{

    public UnitData battleParameters;
    public int level;
    public int exp;

    public int[] expToLevelUp;
    public UnitData[] levelUpChange;
    public Sprite[] levelSprites;
    public GameObject levelGO;

    public ParticleSystem levelUpParticel;
    public SpriteRenderer levelUpIcon;

    public GameObject[] levelUpWeapons;

    void Update() {
        if (Input.GetKeyDown(KeyCode.V)) {
            exp = 100000;
            LevelUp();
        }
            
    }

    void Start() {

        if (name != "Olaf")
            return;

        foreach (GameObject gO in levelUpWeapons) {
            gO.SetActive(false);
        }
        print(level);
        
        levelUpWeapons[level].SetActive(true);
    }

    public void LevelUp() {
        if (gameObject.tag != "Player")
            return;
        if (level >= 5)
            return;
        if(exp >= expToLevelUp[level - 1])
        {
            battleParameters = battleParameters.combine(levelUpChange[level]);
            levelUpWeapons[level].SetActive(false);
            level++;
            levelUpWeapons[level].SetActive(true);
            levelGO.GetComponent<SpriteRenderer>().sprite = levelSprites[level - 1];
            levelUpParticel.gameObject.SetActive(true);
            levelUpIcon.color = new Color(1,1,1,1);
            StartCoroutine(FadeOut());
            AudioMaster.instance.wmRoundEndingA040Play();

        }
    }

    IEnumerator FadeOut() {
        yield return new WaitForSeconds(1);
        do {
            yield return new WaitForEndOfFrame();
            levelUpIcon.color = new Color(1, 1, 1, levelUpIcon.color.a - 0.008f);
        } while (levelUpIcon.color.a >= 0);
        levelUpParticel.gameObject.SetActive(false);
    }
}
//a40 roundending