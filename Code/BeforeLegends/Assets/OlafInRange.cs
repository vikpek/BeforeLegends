using UnityEngine;
using System.Collections;

public class OlafInRange : MonoBehaviour {

    public EnemyAI ai;

    void OnTriggerEnter(Collider other)
    {
        if (other.name == "EnemyVision")
        {
            ai.playerInRange = true;
        }
    }
    void OnTriggerExit(Collider other)
    {
        if (other.name == "EnemyVision")
        {
            ai.playerInRange = false;
        }
    }

}