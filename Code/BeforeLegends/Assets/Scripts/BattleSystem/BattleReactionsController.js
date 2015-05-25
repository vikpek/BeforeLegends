#pragma strict

private var playerUnitData : UnitData;
private var enemyUnitData : UnitData;

private var defaultPlayerHp: float;
private var defaultEnemyHp: float;

function Start () { // this function is called only ONCE per scene start
	playerUnitData = GameObject.FindGameObjectWithTag("Player").GetComponent(BattleParameters).battleParameters;
	enemyUnitData = GameObject.FindGameObjectWithTag("Enemy").GetComponent(BattleParameters).battleParameters;
	defaultPlayerHp = playerUnitData.hitPoints;
	defaultEnemyHp = enemyUnitData.hitPoints;
}



function Update () {

}

function ReactionHornedLion()
{

if (enemyUnitData.hitPoints >0 && enemyUnitData.hitPoints <= 15){
	GetComponent(BattleActions).AttackOpponentFinal();
	}
	else if (enemyUnitData.hitPoints>15 && enemyUnitData.hitPoints <=25){
	GetComponent(BattleActions).HealSelfOpponent();
	}
	else{
	GetComponent(BattleActions).HornedLionSpecialAttackOne();
	}
}

