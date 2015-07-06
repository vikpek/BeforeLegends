//#pragma strict

////- final attack if under 20%HP  - heals if between 20% -40%HP - otherwise just attacks

//function determineAction(battle : BattleController){
//	if(battle.enemyData.hitPoints / battle.enemyData.maxHitPoints <= 0.2 && battle.enemyData.actionPoints >= 1){
//		battle.enemyAction = Action.FINALATTACK;
//	}else{
//		battle.enemyAction = Action.ATTACK;
//	}
//}