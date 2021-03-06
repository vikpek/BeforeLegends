﻿

class UnitData{
	var attack : float;
	var defense : float;
	var armor : float;
	var damage : float;
	var hitPoints : float;
	var maxHitPoints : float;
	var actionPoints : int;
	var maxActionPoints : int;
	var speed : int;
	var critStrike : float;
	var critBlock : float;
	var expToGain : int;
	
	function calcDamage(opponent : UnitData, actionDamage : float){
		var actualAttack : float = attack - attack * 0.1 + Random.Range(0, 1.0) * attack * 0.2;
		var actualDefense : float = opponent.defense - opponent.defense * 0.1 + Random.Range(0, 1.0) * opponent.defense * 0.2;


		var mad : float = actualAttack / actualDefense / 10;
		if(actualAttack < actualDefense){
			mad = -mad;
		}
		
		var damageValue : float = damage + damage * mad;
		var isCrit : boolean = false;
		if(Random.Range(0, 1.0) < critStrike){
			damageValue *= 1.5;
			isCrit = true;
		}
		
		if(Random.Range(0, 1.0) < opponent.critBlock){
			return 0;
		}
		
		return [damageValue / (damageValue + opponent.armor) * damageValue * actionDamage, isCrit];
	}
	
	function combine(data : UnitData){
		var newData : UnitData = UnitData();
		
		newData.attack = attack + data.attack;
		newData.defense = defense + data.defense;
		newData.damage = damage + data.damage;
		newData.armor = armor + data.armor;
		newData.hitPoints = hitPoints + data.hitPoints;
		newData.actionPoints = actionPoints + data.actionPoints;
		newData.speed = speed + data.speed;
		newData.critStrike = critStrike + data.critStrike;
		newData.critBlock = critBlock + data.critBlock;
		
		return newData;
	}
}