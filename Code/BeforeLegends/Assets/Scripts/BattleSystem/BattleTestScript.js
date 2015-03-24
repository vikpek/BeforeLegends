
var player : UnitData;
var opponent : UnitData;
var dagger : UnitData;

function Awake(){

	player = UnitData();
	player.attack = 3;
	player.defense = 2;
	player.damage = 1;
	player.armor = 0;
	player.hitPoints = 20;
	player.actionPoints = 0;
	player.speed = 0;
	player.critStrike = 0.5;
	player.critBlock = 0;
	
	opponent = UnitData();
	opponent.attack = 3;
	opponent.defense = 1;
	opponent.damage = 2;
	opponent.armor = 1;
	opponent.hitPoints = 16;
	opponent.actionPoints = 0;
	opponent.speed = 0;
	opponent.critStrike = 0.1;
	opponent.critBlock = 0;
	
	dagger = UnitData();
	dagger.attack = 2;
	dagger.defense = 0;
	dagger.damage = 4;
	dagger.armor = 0;
	dagger.hitPoints = 0;
	dagger.actionPoints = 0;
	dagger.speed = 0;
	dagger.critStrike = 0.15;
	dagger.critBlock = 0;
	
	combatSequence(player.combine(dagger), opponent);
}

function combatSequence(player: UnitData, opponent : UnitData){
	var odd : boolean = true;
	while(player.hitPoints > 0 && opponent.hitPoints > 0){
		var damage : float;
		if(odd){
			result = player.calcDamage(opponent);
			damage = result[0];
			isCrit = result[1];
			opponent.hitPoints -= damage;
			Debug.Log("Player hit Opponent for " + damage + (isCrit ? " critical" : "") + " damage! Opponent has only " + opponent.hitPoints + " left.");
			if(opponent.hitPoints < 0){
				opponent.hitPoints = 0;
			}
		}else{
			result = opponent.calcDamage(player);
			damage = result[0];
			isCrit = result[1];
			player.hitPoints -= damage;
			Debug.Log("Opponent hit Player for " + damage + (isCrit ? " critical" : "") + " damage! Player has only " + player.hitPoints + " left.");
			if(player.hitPoints < 0){
				player.hitPoints = 0;
			}
		}
		
		odd = !odd;
	}
	
	if(player.hitPoints > 0){
		Debug.Log("Player won!");
	}else{
		Debug.Log("Opponent won!");
	}
	
}