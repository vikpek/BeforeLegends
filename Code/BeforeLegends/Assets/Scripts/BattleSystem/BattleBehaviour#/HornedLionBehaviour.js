#pragma strict

function determineAction(battle : BattleController){
	if(battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.2){
		battle.enemyAction = Action.HEAL;
	}else{
		battle.enemyAction = Action.ATTACK;
	}
}