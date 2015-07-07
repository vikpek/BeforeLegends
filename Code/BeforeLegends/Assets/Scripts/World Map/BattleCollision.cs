using UnityEngine;
using System.Collections;

public class BattleCollision : MonoBehaviour {

    void OnTriggerEnter (Collider other){
        print(other.name);
	    GameStateManager.instance.startBattle(gameObject, other.gameObject);
    }
}
