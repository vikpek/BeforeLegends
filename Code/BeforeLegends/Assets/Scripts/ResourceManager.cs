using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class LResource
{
    public string name;
    public int number;
    public Text guiText;
}

public class ResourceManager : MonoBehaviour
{

    private static ResourceManager _instance;

    public static ResourceManager instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<ResourceManager>();
            return _instance;
        }
    }

    public List<GameObject> ressourcesToDeregister = new List<GameObject>();
    public List<GameObject> toDelete = new List<GameObject>();
    public LResource[] resources;
    public float loseHealthInPercent;
    public float generateHealthInPercent;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        UpdateResourceText();
	}

    void UpdateResourceText()
    {
        foreach(LResource lr in resources)
        {
            lr.guiText.text = "" + lr.number;
        }
    }

    public void ResourceAS(string rName, int number)
    {
        foreach(LResource lr in resources)
        {
            if(lr.name == rName)
            {
                lr.number += number;
                if (lr.number <= 0)
                    lr.number = 0;
            }
        }
    }

    public int GetR(string rName)
    {
        foreach (LResource lr in resources)
        {
            if (lr.name == rName)
            {
                return lr.number;
            }
        }
        return -123456789;
    }

    public void LoseHealthToHunger() 
    {
	    GameObject[] player = GameObject.FindGameObjectsWithTag("Player");
	    foreach(GameObject pO in player) {
            pO.GetComponent<BattleParameters>().battleParameters.hitPoints -= pO.GetComponent<BattleParameters>().battleParameters.maxHitPoints * loseHealthInPercent;
        }
    }
    public void RegenerateHealthThroughEating() 
    {
	    GameObject[] player = GameObject.FindGameObjectsWithTag("Player");
	    foreach(GameObject pO in player) {
		    pO.GetComponent<BattleParameters>().battleParameters.hitPoints += pO.GetComponent<BattleParameters>().battleParameters.maxHitPoints * generateHealthInPercent;
		    if(pO.GetComponent<BattleParameters>().battleParameters.hitPoints > pO.GetComponent<BattleParameters>().battleParameters.maxHitPoints) {
			    pO.GetComponent<BattleParameters>().battleParameters.hitPoints = pO.GetComponent<BattleParameters>().battleParameters.maxHitPoints;
		    }
	    }
    }

    public void CheckHP() 
    {
	    GameObject[] player = GameObject.FindGameObjectsWithTag("Player");
	    foreach(GameObject pO in player) {
		    if(pO.GetComponent<BattleParameters>().battleParameters.hitPoints <= 0) {
			    pO.SetActive(false);
		    }
	    }
    }
}
