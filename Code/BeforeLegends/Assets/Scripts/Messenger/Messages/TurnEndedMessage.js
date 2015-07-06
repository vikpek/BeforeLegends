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
			else if(RessourceMaster.instance.valueFood > 0) {
				RessourceMaster.instance.RegenerateHealthThroughEating();
			}
		}
		for(var r : GameObject in RessourceMaster.instance.ressourcesToDeregister) {
            if(r.GetComponent.<Ressource>().cooldown != 0) {
                r.GetComponent.<Ressource>().cooldown--;
                if(r.GetComponent.<Ressource>().cooldown == 0) {
                    r.GetComponent.<Ressource>().Respawn();
                }
            }
        }
        for(var r in RessourceMaster.instance.toDelete) {
            RessourceMaster.instance.ressourcesToDeregister.Remove(r);
        }
		this.turn = turn;
	}
}