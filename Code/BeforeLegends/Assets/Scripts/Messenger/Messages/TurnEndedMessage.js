#pragma strict

class TurnEndedMessage extends Message{
	var turn : int;
	function TurnEndedMessage(turn : int){
		super("TurnEnded");
		this.turn = turn;
	}
}