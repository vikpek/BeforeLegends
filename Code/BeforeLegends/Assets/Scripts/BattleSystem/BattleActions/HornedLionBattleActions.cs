using UnityEngine;
using System.Collections;

public class HornedLionBattleActions : MonoBehaviour{

    void executeAction(BattleController battle){
	    switch(battle.enemyAction){ // always remember to add new actions BELOW and in BattleController.js
		    case Action.ATTACK :
			    attack(battle);
			    break;
		    case Action.FINALATTACK :
			    attackOpponentFinal(battle);
			    break;
		    case Action.HEAL :
			    healSelfOpponent(battle);
			    break;	
	    }
    }

    void attack(BattleController battle)
    { // this is the basic attack
        battle.playerData.lastDamageReceived = battle.enemyData.calcDamage(battle.playerData, 1);
        battle.enemyData.lastDamageDealt = battle.playerData.lastDamageReceived;
        battle.playerData.hitPoints -= battle.playerData.lastDamageReceived; 
	    battle.animateEnemy(Anims.ATTACK); 
	    battle.animatePlayer(Anims.HURT);
	    AudioMaster.instance.audioSource.PlayOneShot(battle.enemyWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
    }

    void attackOpponentFinal(BattleController battle)
    { // this is a very powerful attack, deals 4x basic damage
        battle.enemyData.actionPoints--; 
        battle.playerData.lastDamageReceived = battle.enemyData.calcDamage(battle.playerData, 4);
        battle.enemyData.lastDamageDealt = battle.playerData.lastDamageReceived;
        battle.playerData.hitPoints -= battle.playerData.lastDamageReceived; 
	    battle.animateEnemy(Anims.SPATTACK); 
	    battle.animatePlayer(Anims.HURT);
	    AudioMaster.instance.audioSource.PlayOneShot(battle.enemyWorldObject.GetComponent<MapObjectCarrier>().audioObject.spattack); 
    }

    void healSelfOpponent(BattleController battle)
    { // this power allows the Lion to heal itself
	    battle.enemyParticles.Play();
	    battle.enemyData.actionPoints--;
	    battle.enemyData.hitPoints += battle.enemyData.maxHitPoints*0.05f;
	    if (battle.enemyData.hitPoints > battle.enemyData.maxHitPoints){
		    battle.enemyData.hitPoints = battle.enemyData.maxHitPoints;
	    }
    }

}
