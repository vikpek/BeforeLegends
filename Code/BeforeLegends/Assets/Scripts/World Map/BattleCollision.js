#pragma strict


function OnTriggerEnter (other : Collider){
		GameStateManager.instance.startBattle(gameObject.GetComponent(MapObjectCarrier).data, other.gameObject.GetComponent(MapObjectCarrier).data);
		
		//CHECK FOR WIN 
		//enemyGameObject.SetActive(false);
	}