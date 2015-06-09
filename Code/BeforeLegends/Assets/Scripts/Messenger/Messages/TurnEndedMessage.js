#pragma strict

class TurnEndedMessage extends Message{
	var turn : int;
	function TurnEndedMessage(turn : int){
		super("TurnEnded");
		var pO : GameObject[] = GameObject.FindGameObjectsWithTag("Player");
		for(var gO : GameObject in pO) {
			RessourceMaster.instance.valueFood -= gO.GetComponent.<Starvation>().eat;
			if(RessourceMaster.instance.valueFood <= 0) {
				RessourceMaster.instance.LoseHealthToHunger();
			}
		}
		this.turn = turn;
	}
}