//#pragma strict

//static var instance : TurnManager;

//var turn : int;
//var numActions : int;

//function Awake(){
//	if(!instance) instance = this;
//}

//function Start(){
//	Messenger.instance.listen(gameObject, "ActionStarted");
//	Messenger.instance.listen(gameObject, "ActionEnded");
//}

//function onEvent_ActionStarted(){
//	numActions++;
//}

//function onEvent_ActionEnded(){
//	numActions--;
//	if(numActions == 0) Messenger.instance.send(AllActionsEndedMessage());
//}

//function Update(){
//	if(Input.GetKeyDown("space") && numActions == 0){
//		Messenger.instance.send(TurnEndedMessage(turn));
//		turn++;
//		Messenger.instance.send(TurnBeganMessage(turn));
//	}
//}