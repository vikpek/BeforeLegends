#pragma strict

function determineAction(battle : BattleController){
	if(battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.2){
		battle.enemyAction = Action.ATTACK;
	}else{
		battle.enemyAction = Action.ATTACK;
	}
}