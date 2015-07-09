using UnityEngine;
using System.Collections;

public class HornedLionBehaviour : MonoBehaviour
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
