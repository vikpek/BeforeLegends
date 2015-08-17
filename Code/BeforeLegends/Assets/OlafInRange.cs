using UnityEngine;
using System.Collections;

public class OlafInRange : MonoBehaviour {

    void OnTriggerEnter(Collider other)
    {
        if (GameStateManager.instance.state == 0)
        {
            if (other.gameObject.name.Contains("Lion") && name == "LionVision")
            {
                other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = true;
            }
            else if (other.gameObject.name.Contains("Jack") && name == "JackalVision")
            {
                other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = true;
            }
            else if (other.gameObject.name.Contains("Mammo"))
            {
                other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = true;
            }
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (GameStateManager.instance.state == 0)
        {
            if (other.gameObject.name.Contains("Lion") && name == "LionVision")
            {
                print(other.gameObject.name);
                other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = false;
            }
            else if (other.gameObject.name.Contains("Jack") && name == "JackalVision")
            {
                other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = false;
            }
            else if (other.gameObject.name.Contains("Mammo"))
            {
                other.gameObject.GetComponentInChildren<EnemyAI>().playerInRange = false;
            }
        }
    }
}