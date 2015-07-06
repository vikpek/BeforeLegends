using UnityEngine;
using System.Collections;

public class BattleCollision : MonoBehaviour {

    void OnTriggerEnter (Collider other){
	    GameStateManager.instance.startBattle(gameObject, other.gameObject);
    }
}
