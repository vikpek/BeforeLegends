private enum Actor{
	PLAYER, ENEMY
}

private enum BattleState{
	IDLE, STARTED, ANIMATING
}

private enum Action{
	ATTACK, ENRAGED, FINALATTACK, HEAL, HEALOTHER, DOUBLEDAMAGE
}

var player : GameObject;

@HideInInspector
var enemy : GameObject;

var round : int = 0;

@HideInInspector
var playerData : UnitData;
@HideInInspector
var	enemyData : UnitData; 

@HideInInspector
var playerFinished : boolean = false;
@HideInInspector
var enemyFinished : boolean = false;

@HideInInspector
var enemyWorldObject : GameObject; 
@HideInInspector
var playerWorldObject : GameObject;

@HideInInspector
var playerHPText : HPText;
@HideInInspector
var enemyHPText : HPText;

@HideInInspector
var playerAnimation : Anims;
@HideInInspector
var enemyAnimation : Anims;
@HideInInspector
var playerAnimator : CharacterAnimations;
@HideInInspector
var enemyAnimator : CharacterAnimations;

@HideInInspector
var state : BattleState = BattleState.IDLE;
@HideInInspector
var actor : Actor = Actor.PLAYER;
@HideInInspector
var enemyAction : Action;
@HideInInspector
var playerAction : Action;

function Update(){
	if(state == BattleState.STARTED){
		state = BattleState.ANIMATING;
		if(actor == Actor.PLAYER){
			player.SendMessage("executeAction", this);
		}else{
			enemy.SendMessage("determineAction", this);
			enemy.SendMessage("executeAction", this);
		}
	}else if(state == BattleState.ANIMATING && !playerAnimator.isAnimating(playerAnimation) && !enemyAnimator.isAnimating(enemyAnimation)){
		if(actor == Actor.PLAYER){
			state = BattleState.STARTED;
			actor = Actor.ENEMY;
		}else{
			state = BattleState.IDLE;
			actor = Actor.PLAYER;
			round++;
		}
	}else if(state == BattleState.IDLE){
		if(playerData.hitPoints <= 0){
			GameStateManager.instance.endBattle(false);
			playerWorldObject.SetActive(true);
		}else if(enemyData.hitPoints <= 0){
			GameStateManager.instance.endBattle(true);
			enemyWorldObject.SetActive(false);
		}
	}
	enemyHPText.setVal(enemyData.hitPoints);
	playerHPText.setVal(playerData.hitPoints);
}
	
function animatePlayer(a : Anims){
	playerAnimator.swapAnimation(a);
	playerAnimation = a;
}

function animateEnemy(a : Anims){
	enemyAnimator.swapAnimation(a);
	enemyAnimation = a;
}

function init(player : GameObject, enemy : GameObject){
	playerWorldObject = player;
	enemyWorldObject = enemy;
	state = BattleState.IDLE;
	actor = Actor.PLAYER;
	playerData = player.GetComponent(MapObjectCarrier).data.battleStats;
	enemyData = enemy.GetComponent(MapObjectCarrier).data.battleStats;
	if(this.enemy){
		GameObject.Destroy(this.enemy);
	}
	this.enemy = GameObject.Instantiate(CharacterModelPrefabs.battlePrefabs[enemy.GetComponent(MapObjectCarrier).data.appearanceID]);
	this.enemy.transform.parent = transform;
	enemyAnimator = this.enemy.GetComponent(CharacterAnimations);
	enemyHPText = this.enemy.GetComponent(HPText);
	round = 0;
}

function Awake(){
	playerAnimator = player.GetComponent(CharacterAnimations);
	playerHPText = player.GetComponent(HPText); 
}

//---MAP INPUT---
function onInput_Attack(){
	onInput(Action.ATTACK);
}

function onInput_Enraged(){
	onInput(Action.ENRAGED);
}

function onInput_Heal(){
	onInput(Action.HEAL);
}

function onInput_HealOther(){
	onInput(Action.HEALOTHER);
}

//--------------

//Resolve Input
function onInput(action : Action){ 
	if(state == BattleState.IDLE && actor == Actor.PLAYER){
		playerAction = action;
		state = BattleState.STARTED;
	}
}
