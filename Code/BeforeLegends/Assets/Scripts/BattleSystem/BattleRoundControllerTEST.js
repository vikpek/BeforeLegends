private enum Actor{
	PLAYER, ENEMY
}

private enum BattleState{
	IDLE, STARTED, ANIMATING
}

private enum Action{
	ATTACK, ENRAGED
}

private var state : BattleState = BattleState.IDLE;
private var actor : Actor = Actor.PLAYER;
private var playerAction : Action;
private var playerData : UnitData;
private var enemyData : UnitData;
private var playerAnimator : CharacterAnimationInterface;
private var enemyAnimator : CharacterAnimationInterface;

function Update(){
	if(state == BattleState.STARTED){
		state = BattleState.ANIMATING;
		if(actor == Actor.PLAYER){
			//player action + callback
		}else{
			//enemy action + callback
		}
	}
}

function OnAnimationFinished(){
	if(state == BattleState.ANIMATING){
		if(actor == Actor.PLAYER){
			state = BattleState.STARTED;
			actor = Actor.ENEMY;
		}else{
			state = BattleState.IDLE;
			actor = Actor.PLAYER;
		}
	}
}

//---MAP INPUT---
function OnInput_Attack(){
	OnInput(Action.ATTACK);
}

function OnInput_Enraged(){
	OnInput(Action.ENRAGED);
}
//--------------

//Resolve Input
function OnInput(action : Action){ 
	if(state == BattleState.IDLE && actor == Actor.PLAYER){
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
