using UnityEngine;
using System.Collections;

public class OlafBattleActions : MonoBehaviour{

    public void executeAction(BattleController battle){
        battle.enemyAnimator.Animate(3);
        battle.battleState = BattleState.ANIMTING;
    }

    public void attack(BattleController battle)
    { // Basic attack
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 1);
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
        battle.PrintToBattlelog(AssembleBattleLog(battle));
        battle.playerAnimator.Animate(1);
        battle.enemyAnimator.Animate(3, 0.5f);
        battle.battleState = BattleState.ANIMTING;
    }

    public void Stun(BattleController battle)
    { // Less damage, but lets the enemy skip his next action
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 0.3f);
        battle.stunned = true;
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
        battle.PrintToBattlelog(AssembleBattleLog(battle, "and stunned the enemy"));
        battle.playerAnimator.Animate(1);
        battle.enemyAnimator.Animate(3);
        battle.battleState = BattleState.ANIMTING;
    }

    public void enraged(BattleController battle)
    { // Attack that deals more damage when low on HP
        battle.enemyData.lastDamageReceived = battle.playerData.calcDamage(battle.enemyData, 2);
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
	    AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.spattack);
        battle.PrintToBattlelog(AssembleBattleLog(battle));
        battle.playerAnimator.Animate(2);
        battle.enemyAnimator.Animate(3, 1.5f);
        battle.battleState = BattleState.ANIMTING;
    }

    public void healself(BattleController battle)
    { // the char heals himself
        battle.playerParticles.Play();
        battle.playerParticles.Stop();
        battle.playerData.lastDamageDealt = 0;
        battle.enemyData.lastDamageReceived = 0;
	    battle.playerData.hitPoints += battle.playerData.maxHitPoints * 0.3f;
	    if (battle.playerData.hitPoints > battle.playerData.maxHitPoints){
		    battle.playerData.hitPoints = battle.playerData.maxHitPoints;
	    }
        battle.PrintToBattlelog(AssembleBattleLog("Olaf healed himself for " + battle.playerData.maxHitPoints * 0.3f));
        StartCoroutine(battle.SetBattleStateAndActor(BattleState.IDLE, Actor.ENEMY, 1f));
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
    //void healother (BattleController battle){ // the char can heal others (only the enemy for now)
    //    battle.enemyParticles.Play();
    //    battle.enemyData.hitPoints += battle.enemyData.maxHitPoints*0.2f;
    //    if (battle.enemyData.hitPoints > battle.enemyData.maxHitPoints){
    //        battle.enemyData.hitPoints = battle.enemyData.maxHitPoints;
    //    }
    //}

    //void doubleDamage(BattleController battle){  // just like a basic attack but deals double basic damage
    //    battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData, 2); 
    //    battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
    //    battle.PrintToBattlelog(AssembleBattleLog(battle));
    //}

    public void Shield(BattleController battle)
    {
        battle.playerParticles.Play();
        battle.playerParticles.Stop();
        battle.shielded = true;
        battle.playerData.hitPoints += battle.playerData.maxHitPoints * 0.15f;
        if (battle.playerData.hitPoints > battle.playerData.maxHitPoints) {
            battle.playerData.hitPoints = battle.playerData.maxHitPoints;
        }
        battle.PrintToBattlelog(AssembleBattleLog("Olaf shielded himself"));
        battle.playerAnimator.StartShieldAnimation();
        StartCoroutine(battle.SetBattleStateAndActor(BattleState.IDLE, Actor.ENEMY, 2f));
        /*
         * awesome stuff! 
         */
    }

    public void Revenge(BattleController battle) 
    {
        battle.enemyData.lastDamageReceived = battle.playerData.lastDamageReceived;
        battle.playerData.lastDamageDealt = battle.enemyData.lastDamageReceived;
        battle.enemyData.hitPoints -= battle.enemyData.lastDamageReceived;
        battle.enemyHPText.tm.gameObject.GetComponent<CombatText>().DisplayDamage(battle.playerData.lastDamageDealt);
        AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent<MapObjectCarrier>().audioObject.attack);
        battle.PrintToBattlelog(AssembleBattleLog("REEEEEEEEEEEEVENGE UAUAUUAAAAAAAAAAH!"));
        battle.playerAnimator.Animate(1);
        battle.enemyAnimator.Animate(3);
        battle.battleState = BattleState.ANIMTING;
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
