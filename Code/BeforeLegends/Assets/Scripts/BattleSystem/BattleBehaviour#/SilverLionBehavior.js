#pragma strict

//- final attack if under 20%HP  - heals if between 20% -40%HP - otherwise just attacks

function determineAction(battle : BattleController){
	if (battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.4 && battle.enemyData.actionPoints >= 1){
		battle.enemyAction = Action.HEAL;
	}else{
		battle.enemyAction = Action.ATTACK;
	}
}