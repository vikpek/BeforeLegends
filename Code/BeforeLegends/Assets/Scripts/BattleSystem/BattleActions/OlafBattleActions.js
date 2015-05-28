//copy paste
function executeAction(battle : BattleController){
	switch(battle.playerAction){   //always remember to list new battle actions (functions below) here.
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
		case Action.HEAL :
			healself(battle);
			break;	
	}
}

function attack(battle : BattleController){ // Basic attack
	battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData, 1)[0]; 
	battle.animateEnemy(Anims.HURT); 
	battle.animatePlayer(Anims.ATTACK);
	AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent(MapObjectCarrier).audioObject.attack);
}

function enraged(battle : BattleController){ // Attack that deals more damage when low on HP
	var enragedBonus : float;
	enragedBonus = (battle.playerData.maxHitPoints - battle.playerData.hitPoints) / battle.playerData.maxHitPoints + 1;
	var newPlayerData : UnitData = battle.playerData.combine(UnitData()); // kopiert playerdata
	newPlayerData.attack *= enragedBonus;
	battle.enemyData.hitPoints -= newPlayerData.calcDamage(battle.enemyData, enragedBonus)[0]; 
	battle.animateEnemy(Anims.HURT); 
	battle.animatePlayer(Anims.SPATTACK);
	AudioMaster.instance.audioSource.PlayOneShot(battle.playerWorldObject.GetComponent(MapObjectCarrier).audioObject.spattack);
}

function healself(battle : BattleController){ // the char heals himself
	battle.playerData.hitPoints += battle.playerData.maxHitPoints*0.3;
	if (battle.playerData.hitPoints > battle.playerData.maxHitPoints){
		battle.playerData.hitPoints = battle.playerData.maxHitPoints;
	}
}

function healother (battle : BattleController){ // the char can heal others (only the enemy for now)
	battle.enemyData.hitPoints += battle.enemyData.maxHitPoints*0.2;
	if (battle.enemyData.hitPoints > battle.enemyData.maxHitPoints){
		battle.enemyData.hitPoints = battle.enemyData.maxHitPoints;
	}
}

function doubleDamage(battle : BattleController){  // just like a basic attack but deals double basic damage
	battle.enemyData.hitPoints -= battle.playerData.calcDamage(battle.enemyData, 2)[0]; 
	battle.animateEnemy(Anims.HURT); 
	battle.animatePlayer(Anims.ATTACK);
}

