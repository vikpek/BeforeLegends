using UnityEngine;
using System.Collections;

public class HornedLionBehaviour : MonoBehaviour
{

    void determineAction(BattleController battle) {
        if (battle.stunned) {
            battle.enemyAction = Action.SKIP;
            return;
        }

        if(name.Contains("Jackal"))
        {
            if (battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.2f && battle.enemyData.actionPoints >= 1)
            {
                battle.enemyAction = Action.HEAL;
            }
            else if (Random.Range(0, 10) == 0 && battle.enemyData.actionPoints >= 1)
            {
                battle.enemyAction = Action.DOUBLEDAMAGE;
            }
        }

        if(name.Contains("Mammoth"))
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

        if(name.Contains("Lion"))
        {
            if (battle.round == 0)
            {
                battle.enemyAction = Action.FINALATTACK;
            }
            else
            {
                battle.enemyAction = Action.ATTACK;
            }
        }
    }
}
