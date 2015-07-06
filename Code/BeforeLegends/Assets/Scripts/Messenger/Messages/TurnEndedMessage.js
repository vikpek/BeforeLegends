//#pragma strict

//class TurnEndedMessage extends Message{
//	var turn : int;
//	function TurnEndedMessage(turn : int){
//		super("TurnEnded");
//		var pO : GameObject[] = GameObject.FindGameObjectsWithTag("Player");
//		for(var gO : GameObject in pO) {
//			RessourceMaster.instance.FoodAS(-gO.GetComponent.<Starvation>().eat);
//			if(RessourceMaster.instance.valueFood <= 0) {
//				RessourceMaster.instance.LoseHealthToHunger();
//			}
//			else if(RessourceMaster.instance.valueFood > 0) {
//				RessourceMaster.instance.RegenerateHealthThroughEating();
//			}
//		}
//		this.turn = turn;
//	}
//}