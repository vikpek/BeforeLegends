private var action : String; 
private var player : String; 
private var battle = true; 
private var displayGui = false;

function Start () { 
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
	GetComponent(BattleActions).HornedLionDeath();
	GameObject.FindGameObjectWithTag("Player").GetComponentInChildren(Animator).SetBool("attack",false);
	
}

function EnemyChoice() { 
	
	print("enemy makes a decision"); 
	GetComponent(BattleReactionsController).ReactionHornedLion();
	yield new WaitForSeconds(1); 
	player = "enemy"; 
	action = "attacks"; 
	GameObject.FindGameObjectWithTag("Enemy").GetComponentInChildren(Animator).SetBool("attack",false);
	GetComponent(BattleActions).OlafDeath();
}

function TurnEnd() { 
	print("turn ends"); 
	yield new WaitForSeconds(1); 
	
}

function OnGUI() { 
	var canvas = GameObject.FindGameObjectWithTag("UserAttackUI").GetComponent(Canvas);
	
	if (!displayGui){
		canvas.enabled = false;
	}else{
		canvas.enabled = true;
	}
}

function HideGUI()
{
	displayGui = false;
}