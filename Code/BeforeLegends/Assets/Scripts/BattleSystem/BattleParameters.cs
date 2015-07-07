using UnityEngine;
using System.Collections;

public class BattleParameters : MonoBehaviour{

    public UnitData battleParameters;
    public int level;
    public int exp;

    public int[] expToLevelUp;
    public UnitData[] levelUpChange;

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

}
