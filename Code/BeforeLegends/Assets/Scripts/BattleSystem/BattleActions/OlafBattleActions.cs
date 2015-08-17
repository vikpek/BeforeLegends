using UnityEngine;
using System.Collections;

public class OlafBattleActions : MonoBehaviour{

    public void executeAction(BattleController battle){
	    switch(battle.playerAction){   //always remember to list new battle actions (functions below) here.
		    case Action.ATTACK :
			    attack(battle);
			    break;
		    case Action.ENRAGED :
			    enraged(battle);
			    break;
		    case Action.HEALOTHER :
			    healother(battle);
			    break;
		    case Action.DOUBLEDAMAGE :
			    doubleDamage(battle);
			    break;	
		    case Action.HEAL :
			    healself(battle);
			    break;
            case Action.STUN:
                Stun(battle);
	            break;
            case Action.SHIELD:
	            Shield(battle);
	            break;
            case Action.REVENGE:
                Revenge(battle);
	            break;
	    }
    }

    public void attack(BattleController battle)
    { // Basic attack
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 1);
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.ATTACK);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
        battle.PrintToBattlelog(AssembleBattleLog(battle));
    }

    void Stun(BattleController battle)
    { // Less damage, but lets the enemy skip his next action
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 0.3f);
        battle.stunned = true;
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.ATTACK);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
        battle.PrintToBattlelog(AssembleBattleLog(battle, "and stunned the enemy"));
    }

    void enraged(BattleController battle){ // Attack that deals more damage when low on HP
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 2);
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
	    battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.SPATTACK);
	    AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.spattack);
        battle.PrintToBattlelog(AssembleBattleLog(battle));
    }

    void healself(BattleController battle)
    { // the char heals himself
        battle.playerParticles.Play();
        battle.playerParticles.Stop();
        battle.animateEnemy(Anims.HURT);
        battle.animatePlayer(Anims.NONE);
        battle.playerData.lastDamageDealt = 0;
        battle.enemyData.lastDamageReceived = 0;
	    battle.playerData.hitPoints += battle.playerData.maxHitPoints * 0.3f;
	    if (battle.playerData.hitPoints > battle.playerData.maxHitPoints){
		    battle.playerData.hitPoints = battle.playerData.maxHitPoints;
	    }
        battle.PrintToBattlelog(AssembleBattleLog("Olaf healed himself for " + battle.playerData.maxHitPoints * 0.3f));
    }

    /*void Revenge(BattleController battle)
    { // Attack that deals more damage when low on HP
        battle.enemyData.lastDamageReceived = battle.enemyData.lastDamageDealt;
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.SPATTACK);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.spattack);
    }*/
    //---------------------------------------------------------------------------------------------------------------------------------
    void healother (BattleController battle){ // the char can heal others (only the enemy for now)
	    battle.enemyParticles.Play();
	    battle.enemyData.hitPoints += battle.enemyData.maxHitPoints*0.2f;
	    if (battle.enemyData.hitPoints > battle.enemyData.maxHitPoints){
		    battle.enemyData.hitPoints = battle.enemyData.maxHitPoints;
	    }
    }

    void doubleDamage(BattleController battle){  // just like a basic attack but deals double basic damage
	    battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData, 2); 
	    battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.ATTACK);
        battle.PrintToBattlelog(AssembleBattleLog(battle));
    }

    void Shield(BattleController battle) {
        battle.animatePlayer(Anims.HURT);
        battle.playerParticles.Play();
        battle.shielded = true;
        battle.playerData.hitPoints += battle.playerData.maxHitPoints * 0.15f;
        if (battle.playerData.hitPoints > battle.playerData.maxHitPoints) {
            battle.playerData.hitPoints = battle.playerData.maxHitPoints;
        }
        battle.PrintToBattlelog(AssembleBattleLog("Olaf shielded himself"));
    }

    void Revenge(BattleController battle) {
        battle.animatePlayer(Anims.ATTACK);
        battle.revenge = true;
        battle.PrintToBattlelog(AssembleBattleLog("Olaf will reflect the next attack"));
    }

    string AssembleBattleLog(BattleController battle) {
        return battle.playerName + " dealt " + battle.playerData.lastDamageDealt.ToString("F1") + " damage to " +
               battle.enemyName + ".";
    }
    string AssembleBattleLog(BattleController battle, string extra) {
        return battle.playerName + " dealt " + battle.playerData.lastDamageDealt.ToString("F1") + " damage to " +
               battle.enemyName + " " + extra + ".";
    }
    string AssembleBattleLog(string extra) {
        return extra + ".";
    }
}
