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
	    }
    }
    
    
    void attack(BattleController battle)
    { // Basic attack
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 1);
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.ATTACK);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
    }

    void Stun(BattleController battle)
    { // Basic attack
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 0.3f);
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.ATTACK);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
    }

    void enraged(BattleController battle){ // Attack that deals more damage when low on HP
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 2);
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
	    battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.SPATTACK);
	    AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.spattack);
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
    }

    void Revenge(BattleController battle)
    { // Attack that deals more damage when low on HP
        battle.enemyData.lastDamageReceived = battle.enemyData.lastDamageDealt;
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.animateEnemy(Anims.HURT);
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        battle.animatePlayer(Anims.SPATTACK);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.spattack);
    }
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
    }
}
