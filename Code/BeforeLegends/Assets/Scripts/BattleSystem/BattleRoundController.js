#pragma strict

private int playerTurn = 0;
private var reactionController;
private var battleActions;

function Start () {
	reactionController = GetComponent(BattleReactionsController);
	battleAction = GetComponent(BattleActions);
}

function Update () {
	if(playerTurn==1){
		battleActions.enableActions();					
	}else if(playerTurn == 2){
		reactionController.performReaction();
	}
}