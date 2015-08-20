using UnityEngine;
using System.Collections;

public class HornedLionBattleActions : MonoBehaviour{

    public void executeAction(BattleController battle){
	    switch(battle.enemyAction){ // always remember to add new actions BELOW and in BattleController.js
            case Action.ATTACK:
                battle.enemyAnimator.Animate(1);
			    attack(battle);
			    break;
            case Action.FINALATTACK:
                battle.enemyAnimator.Animate(2);
			    attackOpponentFinal(battle);
			    break;
		    case Action.HEAL :
			    healSelfOpponent(battle);
			    break;	
            case Action.SKIP:
                Skip(battle);
	            break;
	    }
        battle.battleState = BattleState.ANIMTING;
    }

    void attack(BattleController battle)
    { // this is the basic attack
        if (battle.shielded) {
            battle.shielded = false;
        }
        else {
            if (!battle.revenge)
            {
                battle.enemyParticles.EnemyAttackParticles();
                battle.playerData.lastDamageReceived = battle.enemyData.calcDamage(battle.playerData, 1);
                battle.enemyData.lastDamageDealt = battle.playerData.lastDamageReceived;
                battle.playerData.hitPoints -= battle.playerData.lastDamageReceived;
                battle.playerHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.enemyData.lastDamageDealt);
                battle.PrintToBattlelog(AssembleBattleLog(battle));
            }
            else
            {//revenge reflects damage
                battle.enemyParticles.EnemyAttackParticles();
                battle.playerData.lastDamageReceived = 0; //battle.enemyData.calcDamage(battle.playerData, 1);
                battle.enemyData.lastDamageDealt = battle.enemyData.calcDamage(battle.enemyData, 1);
                battle.enemyData.hitPoints -= battle.enemyData.lastDamageDealt;
                battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.enemyData.lastDamageDealt);
                battle.PrintToBattlelog("Olaf reflected the damage, " + battle.enemyName + " dealt " + battle.enemyData.lastDamageDealt.ToString("F1") + " to himself");
            }
            battle.playerAnimator.Animate(3);
        }
	    AudioMaster.instance.audioSourceEnemies.PlayOneShot(battle.enemyWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
    }

    void attackOpponentFinal(BattleController battle)
    { // this is a very powerful attack, deals 4x basic damage
        if (battle.shielded) {
            battle.shielded = false;
        }
        else
        {
            battle.enemyParticles.EnemyCriticalParticles();
            if (!battle.revenge) {
                battle.playerData.lastDamageReceived = battle.enemyData.calcDamage(battle.playerData, 4);
                battle.enemyData.lastDamageDealt = battle.playerData.lastDamageReceived;
                battle.playerData.hitPoints -= battle.playerData.lastDamageReceived;
                battle.playerHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.enemyData.lastDamageDealt);
                battle.enemyData.actionPoints--;
                battle.PrintToBattlelog(AssembleBattleLog(battle));
            }
            else
            {//revenge reflects damage
                battle.enemyParticles.EnemyCriticalParticles();
                battle.playerData.lastDamageReceived = 0; //battle.enemyData.calcDamage(battle.playerData, 1);
                battle.enemyData.lastDamageDealt = battle.enemyData.calcDamage(battle.playerData, 4);
                battle.enemyData.hitPoints -= battle.enemyData.lastDamageDealt;
                battle.enemyData.actionPoints--;
                battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.enemyData.lastDamageDealt);
                battle.PrintToBattlelog("Olaf reflected the damage, " + battle.enemyName + " dealt " + battle.enemyData.lastDamageDealt.ToString("F1") + " to himself");
            }
            battle.playerAnimator.Animate(3);
        }
        AudioMaster.instance.audioSourceEnemies.PlayOneShot(battle.enemyWorldObject.GetComponent<MapObjectCarrier>().audioObject.spattack); 
    }

    void healSelfOpponent(BattleController battle)
    { // this power allows the Lion to heal itself
        battle.enemyParticles.EnemyHealParticles();
	    battle.enemyData.actionPoints--;
	    battle.enemyData.hitPoints += battle.enemyData.maxHitPoints*0.3f;
	    if (battle.enemyData.hitPoints > battle.enemyData.maxHitPoints){
		    battle.enemyData.hitPoints = battle.enemyData.maxHitPoints;
        }
    }

    void Skip(BattleController battle) {
        battle.stunned = false;
        battle.PrintToBattlelog(AssembleBattleLog(battle.enemyName + " is stunned and can't act"));
    }

    string AssembleBattleLog(BattleController battle) {
        return battle.enemyName + " dealt " + battle.enemyData.lastDamageDealt.ToString("F1") + " damage to " +
               battle.playerName + ".";
    }
    string AssembleBattleLog(BattleController battle, string extra) {
        return battle.enemyName + " dealt " + battle.enemyData.lastDamageDealt.ToString("F1") + " damage to " +
               battle.playerName + " " + extra + ".";
    }
    string AssembleBattleLog(string extra) {
        return extra + ".";
    }
}
