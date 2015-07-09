using UnityEngine;
using System.Collections;

public class EnemysInRange : MonoBehaviour {

    public int checkRange;
    GameObject[] inRange;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	    
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "EnemyParent")
            WorldMapGenerator.instance.enemys[other.gameObject].SetActive(true);
    }
    void OnTriggerExit(Collider other)
    {
        if (other.tag == "EnemyParent")
            other.GetComponentInChildren<MapObjectCarrier>().gameObject.SetActive(false);
    }
}
