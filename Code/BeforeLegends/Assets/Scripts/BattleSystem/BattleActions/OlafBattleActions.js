﻿//copy paste
function executeAction(battle : BattleController){
	switch(battle.playerAction){
		case Action.ATTACK :
			attack(battle);
			break;
		case Action.ENRAGED :
			enraged(battle);
			break;
		case Action.HEAL :
			healself(battle);
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
	battle.enemyData.hitPoints -= newPlayerData.calcDamage(battle.enemyData, 1)[0]; 
	battle.animateEnemy(Anims.HURT); 
	battle.animatePlayer(Anims.ATTACK);
}

function healself(battle : BattleController){
	battle.playerData.hitPoints += battle.playerData.maxHitPoints*0.05;
	if (battle.playerData.hitPoints > battle.playerData.maxHitPoints){
		battle.playerData.hitPoints = battle.playerData.maxHitPoints;
	}
}



