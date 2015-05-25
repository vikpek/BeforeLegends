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

if (enemyUnitData.hitPoints >0 && enemyUnitData.hitPoints <= defaultEnemyHp*0.25){ // depending on HP enemey does different actions
	GetComponent(BattleActions).AttackOpponentFinal();
	}
	else if (enemyUnitData.hitPoints> defaultEnemyHp*0.25 && enemyUnitData.hitPoints <= defaultEnemyHp*0.4){
	GetComponent(BattleActions).HealSelfOpponent();
	}
	else{
	GetComponent(BattleActions).HornedLionSpecialAttackOne();
	}
	
	//enemyUnitData.hitPoints < defaultEnemyHp*0.8){
	//enemyUnitData.hitPoints < defaultEnemyHp*0.8){
}

