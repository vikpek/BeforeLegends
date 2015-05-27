//copy paste
function executeAction(battle : BattleController){
	switch(battle.playerAction){
		case Action.ATTACK :
			attack(battle);
			break;
		case Action.ENRAGED :
			enraged(battle);
			break;
		case Action.HEALOTHER :
			healother(battle);
			break;
		case Action.DOUBLEDAMAGE :
			doubleDamage(battle);
			break;	
	}
}

function attack(battle : BattleController){
	battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData, 1)[0]; 
	battle.animateEnemy(Anims.HURT); 
	battle.animatePlayer(Anims.ATTACK);
}

function enraged(battle : BattleController){
	var enragedBonus : float;
	enragedBonus = (battle.playerData.maxHitPoints - battle.playerData.hitPoints) / battle.playerData.maxHitPoints + 1;
	var newPlayerData : UnitData = battle.playerData.combine(UnitData()); // kopiert playerdata
	newPlayerData.attack *= enragedBonus;
	battle.enemyData.hitPoints -= newPlayerData.calcDamage(battle.enemyData, enragedBonus)[0]; 
	battle.animateEnemy(Anims.HURT); 
	battle.animatePlayer(Anims.ATTACK);
}

function healself(battle : BattleController){
	battle.playerData.hitPoints += battle.playerData.maxHitPoints*0.1;
	if (battle.playerData.hitPoints > battle.playerData.maxHitPoints){
		battle.playerData.hitPoints = battle.playerData.maxHitPoints;
	}
}

function healother (battle : BattleController){
	battle.enemyData.hitPoints += battle.enemyData.maxHitPoints*0.05;
	if (battle.enemyData.hitPoints > battle.enemyData.maxHitPoints){
		battle.enemyData.hitPoints = battle.enemyData.maxHitPoints;
	}
}

function doubleDamage(battle : BattleController){  // just like a basic attack but deals double basic damage
	battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData, 2)[0]; 
	battle.animateEnemy(Anims.HURT); 
	battle.animatePlayer(Anims.ATTACK);
}

