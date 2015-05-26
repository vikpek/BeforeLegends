
function executeAction(battle : BattleController){
	switch(battle.playerAction){
		case Action.ATTACK :
			attack(battle);
			break;
	}
}

function attack(battle : BattleController){
	battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData)[0]; 
	battle.animateEnemy(Anims.HURT); 
	battle.animatePlayer(Anims.ATTACK);
}