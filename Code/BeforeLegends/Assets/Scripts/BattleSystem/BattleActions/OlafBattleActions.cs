using UnityEngine;
using System.Collections;

public static class OlafBattleActions {

    void executeAction(BattleController battle){
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

    void attack(BattleController battle){ // Basic attack
	    battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData, 1)[0]; 
	    battle.animateEnemy(Anims.HURT); 
	    battle.animatePlayer(Anims.ATTACK);
	    AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent(MapObjectCarrier).audioObject.attack);
    }

    void enraged(BattleController battle){ // Attack that deals more damage when low on HP
	    float enragedBonus;
	    enragedBonus = (battle.playerData.maxHitPoints - battle.playerData.hitPoints) / battle.playerData.maxHitPoints + 1;
        UnitData newPlayerData = battle.playerData.combine(UnitData()); // kopiert playerdata
	    newPlayerData.attack *= enragedBonus;
	    battle.enemyData.hitPoints -= newPlayerData.calcDamage(battle.enemyData, enragedBonus)[0]; 
	    battle.animateEnemy(Anims.HURT); 
	    battle.animatePlayer(Anims.SPATTACK);
	    AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent(MapObjectCarrier).audioObject.spattack);
    }

    void healself(BattleController battle){ // the char heals himself
	    battle.playerParticles.heal.Play();
	    battle.playerData.hitPoints += battle.playerData.maxHitPoints*0.3f;
	    if (battle.playerData.hitPoints > battle.playerData.maxHitPoints){
		    battle.playerData.hitPoints = battle.playerData.maxHitPoints;
	    }
    }

    void healother (BattleController battle){ // the char can heal others (only the enemy for now)
	    battle.enemyParticles.heal.Play();
	    battle.enemyData.hitPoints += battle.enemyData.maxHitPoints*0.2f;
	    if (battle.enemyData.hitPoints > battle.enemyData.maxHitPoints){
		    battle.enemyData.hitPoints = battle.enemyData.maxHitPoints;
	    }
    }

    void doubleDamage(BattleController battle){  // just like a basic attack but deals double basic damage
	    battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData, 2); 
	    battle.animateEnemy(Anims.HURT); 
	    battle.animatePlayer(Anims.ATTACK);
    }
}
