#pragma strict

var playerUnitData : UnitData;
var enemyUnitData : UnitData;

function Start () {
	playerUnitData = GameObject.FindGameObjectWithTag("Player").GetComponent(BattleParameters).battleParameters;
	enemyUnitData = GameObject.FindGameObjectWithTag("Enemy").GetComponent(BattleParameters).battleParameters;
}

function Update () {

}

function AttackDefault(){
	Debug.Log("attack default" + playerUnitData.hitPoints);
	
//	player.GetComponent(BattleParameters);
	
}

function Attack2(){
	Debug.Log("attack 2 default");
}

function Defend(){
	Debug.Log("defend default");
}

function Defend2(){
	Debug.Log("defend 2 default");
}

function Defend3(){
	Debug.Log("defend 3 default");
}