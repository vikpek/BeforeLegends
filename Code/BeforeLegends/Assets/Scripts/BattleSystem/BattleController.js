private enum Actor{
	PLAYER, ENEMY
}

private enum BattleState{
	IDLE, STARTED, ANIMATING
}

private enum Action{
	ATTACK, ENRAGED
}

var player : GameObject;

@HideInInspector
var enemy : GameObject;

@HideInInspector
var playerData : UnitData;
@HideInInspector
var	enemyData : UnitData; 

@HideInInspector
var playerFinished : boolean = false;
@HideInInspector
var enemyFinished : boolean = false;

@HideInInspector
var playerAnimation : Anims;
@HideInInspector
var enemyAnimation : Anims;
@HideInInspector
var playerAnimator : CharacterAnimations;
@HideInInspector
var enemyAnimator : CharacterAnimations;


var state : BattleState = BattleState.IDLE;
@HideInInspector
var actor : Actor = Actor.PLAYER;
@HideInInspector
var enemyAction : Action;
@HideInInspector
var playerAction : Action;

function Update(){
	Debug.Log(playerAnimator.isAnimating(playerAnimation) + " | " + enemyAnimator.isAnimating(enemyAnimation));
	if(state == BattleState.STARTED){
		state = BattleState.ANIMATING;
		if(actor == Actor.PLAYER){
			player.SendMessage("executeAction", this);
		}else{
			enemyAction = Action.ATTACK;
			enemy.SendMessage("executeAction", this);
		}
	}else if(state == BattleState.ANIMATING && !playerAnimator.isAnimating(playerAnimation) && !enemyAnimator.isAnimating(enemyAnimation)){
		if(actor == Actor.PLAYER){
			state = BattleState.STARTED;
			actor = Actor.ENEMY;
		}else{
			state = BattleState.IDLE;
			actor = Actor.PLAYER;
		}
	}else if(state == BattleState.IDLE){
		if(playerData.hitPoints <= 0){
			GameStateManager.instance.endBattle(false);
		}else if(enemyData.hitPoints <= 0){
			GameStateManager.instance.endBattle(true);
		}
	}
}

function animatePlayer(a : Anims){
	playerAnimator.swapAnimation(a);
	playerAnimation = a;
}

function animateEnemy(a : Anims){
	enemyAnimator.swapAnimation(a);
	enemyAnimation = a;
}

function init(player : MapObjectData, enemy : MapObjectData){
	state = BattleState.IDLE;
	actor = Actor.PLAYER;
	playerData = player.battleStats;
	enemyData = enemy.battleStats;
	if(this.enemy){
		GameObject.Destroy(this.enemy);
	}
	this.enemy = GameObject.Instantiate(CharacterModelPrefabs.battlePrefabs[enemy.appearanceID]);
	this.enemy.transform.parent = transform;
	enemyAnimator = this.enemy.GetComponent(CharacterAnimations);
}

function Awake(){
	playerAnimator = player.GetComponent(CharacterAnimations);
}

//---MAP INPUT---
function onInput_Attack(){
	onInput(Action.ATTACK);
}

function onInput_Enraged(){
	onInput(Action.ENRAGED);
}
//--------------

//Resolve Input
function onInput(action : Action){ 
	if(state == BattleState.IDLE && actor == Actor.PLAYER){
		playerAction = action;
		state = BattleState.STARTED;
	}
}

/*function Start () { 
	while (battle) { 
		yield PlayerChoice(); 
		yield BattlePhase(); 
		yield TurnEnd();

     	yield EnemyChoice();
     	yield BattlePhase();
     	yield TurnEnd();
 	}
}

function PlayerChoice() { 
	print("human makes a decision"); 
	player = "human"; 
	displayGui = true;

 	while (displayGui)
    	yield;        
}

function BattlePhase() { 
	print("battle rages on"); 
	yield new WaitForSeconds(1); 
	print(player + " " + action); 
	yield new WaitForSeconds(1); 
}

function EnemyChoice() { 
	
	print("enemy makes a decision"); 
	GetComponent(BattleReactionsController).ReactionHornedLion();
	yield new WaitForSeconds(1); 
	player = "enemy"; 
	action = "attacks"; 
}

function TurnEnd() { 
	print("turn ends"); 
	yield new WaitForSeconds(1); 
}

function OnGUI() { 
	if (!displayGui){
//		GameObject.FindGameObjectWithTag("UserAttackUI").SetActive(false);
	}else{
//		GameObject.FindGameObjectWithTag("UserAttackUI").SetActive(true);
	}

// 	GUI.Box (Rect (10,10,100,90), "Battle Menu");
// 
//	 if (GUI.Button (Rect (20,40,80,20), "Attack"))
//	 {
//	     action = "attacks";
//	     displayGui = false;
//	 } 
//	 
//	 if (GUI.Button (Rect (20,70,80,20), "Defend"))
//	 {
//	     action = "defends";
//	     displayGui = false;
//	 }
}

function HideGUI()
{
	displayGui = false;
}*/
