using UnityEngine;
using System.Collections;

public class BattleParameters : MonoBehaviour {

    public UnitData battleParameters;
    public int level;
    public int exp;

    int[] expToLevelUp;
    UnitData[] levelUpChange;

    public void LevelUp()
    {
        if (level >= 5)
            return;
        if(exp >= expToLevelUp[level - 1])
        {
            battleParameters = battleParameters.combine(levelUpChange[level - 1]);
            level++;
        }
    }

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
