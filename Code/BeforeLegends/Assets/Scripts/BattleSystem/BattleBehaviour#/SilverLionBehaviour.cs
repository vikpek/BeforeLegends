using UnityEngine;
using System.Collections;

public class SilverLionBehaviour : MonoBehaviour
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