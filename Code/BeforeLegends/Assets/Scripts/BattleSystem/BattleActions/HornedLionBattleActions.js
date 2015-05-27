
function executeAction(battle : BattleController){
	switch(battle.enemyAction){
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

function attack(battle : BattleController){
	battle.playerData.hitPoints -= battle.enemyData.calcDamage(battle.playerData, 1)[0]; 
	battle.animateEnemy(Anims.ATTACK); 
	battle.animatePlayer(Anims.HURT);
}

function attackOpponentFinal(battle : BattleController){
	battle.playerData.hitPoints -= battle.enemyData.calcDamage(battle.playerData, 4)[0];
	battle.animateEnemy(Anims.ATTACK); 
	battle.animatePlayer(Anims.HURT); 
}

function healSelfOpponent(battle : BattleController){
	battle.enemyData.hitPoints += battle.enemyData.maxHitPoints*0.05;
	if (battle.enemyData.hitPoints > battle.enemyData.maxHitPoints){
		battle.enemyData.hitPoints = battle.enemyData.maxHitPoints;
	}
}


