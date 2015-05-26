function executeAction(battle : BattleController){
	switch(battle.enemyAction){
		case Action.ATTACK :
			attack(battle);
			break;
	}
}

function attack(battle : BattleController){
	battle.playerData.hitPoints -= battle.enemyData.calcDamage(battle.playerData)[0]; 
	battle.animateEnemy(Anims.ATTACK); 
	battle.animatePlayer(Anims.HURT);
}