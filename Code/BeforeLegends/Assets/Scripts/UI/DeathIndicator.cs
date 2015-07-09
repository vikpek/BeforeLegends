using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class DeathIndicator : MonoBehaviour {

	public Image hunger;
	
	// Update is called once per frame
	void Update () {
        if (ResourceManager.instance.GetR("Food") <= 0)
            hunger.color = new Color(1, 1, 1, Mathf.Sin(Time.time) + 0.1);
        else
            hunger.color = new Color(1, 1, 1, 0);
	}
}
