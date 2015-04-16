#pragma strict

class TurnBeganMessage extends Message{
	var turn : int;
	function TurnBeganMessage(turn : int){
		super("TurnBegan");
		this.turn = turn;
	}
}