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

    void Update() {
        if (Input.GetKeyDown(KeyCode.V)) {
            //exp = expToLevelUp[level];
            LevelUp();
        }
            
    }

    public void LevelUp() {
        if (gameObject.tag != "Player")
            return;
        if (level >= 5)
            return;
        if(exp >= expToLevelUp[level - 1])
        {
            battleParameters = battleParameters.combine(levelUpChange[level]);
            level++;
            levelGO.GetComponent<SpriteRenderer>().sprite = levelSprites[level - 1];
        }
    }

}
