using UnityEngine;
using System.Collections;

public class OlafInRange : MonoBehaviour {

    public EnemyAI ai;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.name.Contains("Lion"))
        {
            other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = true;
        }
        else if (other.gameObject.name.Contains("Jack"))
        {
            other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = true;
        }
        else if (other.gameObject.name.Contains("Mammo"))
        {
            other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = true;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.name.Contains("Lion"))
        {
            other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = false;
        }
        else if (other.gameObject.name.Contains("Jack"))
        {
            other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = false;
        }
        else if (other.gameObject.name.Contains("Mammo"))
        {
            other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = false;
        }
    }
}