#pragma strict

//- final attack if under 20%HP  - heals if between 20% -40%HP - otherwise just attacks

function determineAction(battle : BattleController){
	if(battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.2){
<<<<<<< HEAD
		battle.enemyAction = Action.FINALATTACK;
	}else if(battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.4){
=======
>>>>>>> origin/code
		battle.enemyAction = Action.HEAL;
	}else{
		battle.enemyAction = Action.ATTACK;
	}
}