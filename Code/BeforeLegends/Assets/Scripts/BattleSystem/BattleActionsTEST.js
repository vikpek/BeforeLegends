#pragma strict

/*private var playerUnitData : UnitData;
private var enemyUnitData : UnitData;

private var damage : float;
private var result : float[];
private var isCrit : float;
private var defaultPlayerHp: float;
private var defaultEnemyHp: float;

function Start () {
	playerUnitData = GameObject.FindGameObjectWithTag("Player").GetComponent(BattleParameters).battleParameters;
	enemyUnitData = GameObject.FindGameObjectWithTag("Enemy").GetComponent(BattleParameters).battleParameters;
	defaultPlayerHp = playerUnitData.hitPoints;
	defaultEnemyHp = enemyUnitData.hitPoints;
}

function Update () {
	GameObject.FindGameObjectWithTag("PlayerHP").GetComponent(TextMesh).text = "" + playerUnitData.hitPoints;
	GameObject.FindGameObjectWithTag("EnemyHP").GetComponent(TextMesh).text = "" + enemyUnitData.hitPoints;
}*/

static function Attack(subj : UnitData, subjAnim : CharacterAnimationInterface, obj : UnitData, objAnim : CharacterAnimationInterface, callback : Function){
	subjAnim.swapAnimation(Anims.ATTACK);
	objAnim.swapAnimation(Anims.HURT);
		
	while(
		subjAnim.isAnimating(Anims.ATTACK) ||
		subjAnim.isAnimating(Anims.HURT)
	){
		yield;
	}
	callback();
	//calc damage
}
/*
function AttackDefault(){
	
	GameObject.FindGameObjectWithTag("Player").GetComponentInChildren(Animator).SetBool("attack",true);
	
	result = playerUnitData.calcDamage(enemyUnitData) as float[];
	damage = result[0];
	isCrit = result[1];

	Debug.Log("attack default: " + damage + " " + isCrit);
	enemyUnitData.hitPoints -= damage;
	Debug.Log("enemy hp: " + enemyUnitData.hitPoints);
	ProcessResults();
}

function AttackOpponentDefault(){
	
//	GameObject.FindGameObjectWithTag("Enemy").GetComponentInChildren(Animator).SetBool("attack",true);
	
	result = enemyUnitData.calcDamage(playerUnitData) as float[];
	damage = result[0];
	isCrit = result[1];

	Debug.Log("attack default: " + damage + " " + isCrit);
	playerUnitData.hitPoints -= damage;
	Debug.Log("player hp: " + playerUnitData.hitPoints);
	ProcessResults();
}

function HornedLionSpecialAttackOne (){

	if (enemyUnitData.actionPoints >= 1 && enemyUnitData.hitPoints < defaultEnemyHp*0.8){
	AttackOpponentDefault();
	enemyUnitData.actionPoints --;
	}
	AttackOpponentDefault();
}

function EnragedRetaliation(){

	var enragedRetaliationBonus:float;
	enragedRetaliationBonus = ((defaultPlayerHp - playerUnitData.hitPoints)/defaultPlayerHp)*playerUnitData.attack;
	Debug.Log("enraged retaliation bonus: " + enragedRetaliationBonus + " normal attack: " + playerUnitData.attack);
	playerUnitData.attack = playerUnitData.attack + enragedRetaliationBonus;
	
	result = playerUnitData.calcDamage(enemyUnitData) as float[];
	damage = result[0];
	isCrit = result[1];

	Debug.Log("attack default: " + damage + " " + isCrit);
	enemyUnitData.hitPoints -= damage;
	playerUnitData.attack = playerUnitData.attack - enragedRetaliationBonus;
	Debug.Log("enemy hp: " + enemyUnitData.hitPoints);
	playerUnitData.actionPoints --;	
	
	ProcessResults();
			
}

function Defend(){
	Debug.Log("defend default");
}

private function ProcessResults()
{	
	if(playerUnitData.hitPoints < 0){
		PlayerDeath();
	}else if(enemyUnitData.hitPoints < 0)
	{
		OpponentDeath();
	}
}*/

private function OpponentDeath()
{
	GameStateManager.instance.endBattle(true);
	//TODO animation for opponent death
	//TODO soundeffect for oppnent death
}

private function PlayerDeath()
{
	GameStateManager.instance.endBattle(false);
	//TODO animation for player death
	//TODO soundeffect for player death
}
