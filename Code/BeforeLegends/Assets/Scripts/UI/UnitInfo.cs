using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UnitInfo : MonoBehaviour {

    public static UnitInfo Instance { get; private set; }

    public GameObject unitInfo;
    //public Text attack;
    //public Text defense;
    public Text damage;
    public Text armor;
    public Image level;

    public Sprite playerBackground;
    public Sprite enemyBackground;

    public GameObject currentActive;

    public Image indicatorFront;
    public Image indicatorBack;

    public Sprite[] playerGlory;
    public Sprite[] enemyLevel;

    public Image gloryBar;

    public Image hpBar;
    public Text hpText;

    void Awake() {
        Instance = this;
    }

    void Start() {
        //unitInfo = GameObject.Find("UnitInfo");
        currentActive = GameObject.Find("Olaf");
    }

    public void DisplayUnitInfo(GameObject obj) {
        BattleParameters info = obj.GetComponent<BattleParameters>();
        if (obj.tag == "Player"){
            unitInfo.GetComponent<Image>().sprite = playerBackground;
            gloryBar.fillAmount = (float)info.exp / (float)info.expToLevelUp[info.level-1];
        }
        else {
            unitInfo.GetComponent<Image>().sprite = enemyBackground;
            gloryBar.fillAmount = 0;
        }

        //attack.text = "Attack: " + info.battleParameters.attack;
        //defense.text = "Defense: " + info.battleParameters.defense;
        damage.text = "Damage: " + info.battleParameters.damage;
        armor.text = "Armor: " + info.battleParameters.armor;

        hpText.text = info.battleParameters.hitPoints.ToString() + "/" + info.battleParameters.maxHitPoints.ToString();
        hpBar.fillAmount = info.battleParameters.hitPoints / info.battleParameters.maxHitPoints;

        switch (obj.GetComponent<BattleParameters>().level) {
            case 0:
                if (obj.tag == "Player") level.sprite = playerGlory[0]; else level.sprite = enemyLevel[0];
                break;
            case 1:
                if(obj.tag == "Player") level.sprite = playerGlory[0]; else level.sprite = enemyLevel[0];
                break;
            case 2:
                if (obj.tag == "Player") level.sprite = playerGlory[1]; else level.sprite = enemyLevel[1];
                break;
            case 3:
                if (obj.tag == "Player") level.sprite = playerGlory[2]; else level.sprite = enemyLevel[2];
                break;
            case 4:
                if (obj.tag == "Player") level.sprite = playerGlory[3]; else level.sprite = enemyLevel[2];
                break;
            case 5:
                if (obj.tag == "Player") level.sprite = playerGlory[4]; else level.sprite = enemyLevel[2];
                break;
        }

        if(currentActive == obj || !unitInfo.active)
            unitInfo.SetActive(!unitInfo.active);
        
        currentActive = obj;
    }    
}

