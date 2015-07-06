using UnityEngine;
using System.Collections;

public class HornedLionBehaviour
{

    void determineAction(BattleController battle)
    {
        if (battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.2f && battle.enemyData.actionPoints >= 1)
        {
            battle.enemyAction = Action.FINALATTACK;
        }
        else
        {
            battle.enemyAction = Action.ATTACK;
        }
    }
}

public class SilverLionBehaviour
{

    void determineAction(BattleController battle)
    {
        if (battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.4f && battle.enemyData.actionPoints >= 1)
        {
            battle.enemyAction = Action.FINALATTACK;
        }
        else
        {
            battle.enemyAction = Action.ATTACK;
        }
    }
}
