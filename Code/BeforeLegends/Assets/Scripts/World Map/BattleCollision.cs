using UnityEngine;
using System.Collections;

public class BattleCollision : MonoBehaviour {

    void OnTriggerEnter (Collider other){
        if(other.tag == "EnemyParent")
	        GameStateManager.instance.startBattle(gameObject, other.gameObject.GetComponentInChildren<MapObjectCarrier>().gameObject);
    }
}
