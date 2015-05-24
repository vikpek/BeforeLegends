#pragma strict

private var playerUnitData : UnitData;
private var enemyUnitData : UnitData;


private var damage : float;
private var result : float[];
private var isCrit : float;

function Start () {
	playerUnitData = GameObject.FindGameObjectWithTag("Player").GetComponent(BattleParameters).battleParameters;
	enemyUnitData = GameObject.FindGameObjectWithTag("Enemy").GetComponent(BattleParameters).battleParameters;
}

function Update () {

}

function AttackDefault(){

	result = playerUnitData.calcDamage(enemyUnitData) as float[];
	damage = result[0];
	isCrit = result[1];

	Debug.Log("attack default: " + damage + " " + isCrit);
	enemyUnitData.hitPoints -= damage;
	Debug.Log("enemy hp: " + enemyUnitData.hitPoints);
	ProcessResults();
}

function Attack2(){
	Debug.Log("attack 2 default");
}

function Defend(){
	Debug.Log("defend default");
}

<<<<<<< HEAD
function Defend2(){
	Debug.Log("defend 2 default");
}

function Defend3(){
	Debug.Log("defend 3 default");
}
=======
private function ProcessResults()
{	
	if(playerUnitData.hitPoints > 0){
		OpponentDeath();
		Debug.Log("Player won!");
	}else{
		PlayerDeath();
		Debug.Log("Opponent won!");
	}
}

private function OpponentDeath()
{
	GameObject.FindGameObjectWithTag("Enemy").SetActive(false);
}

private function PlayerDeath()
{
	GameObject.FindGameObjectWithTag("Player").SetActive(false);
}
>>>>>>> origin/code
