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
    public GameObject plusIndicator;
    public GameObject minusIndicator;
    public RectTransform[] indicatorOrigins;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        UpdateResourceText();
        if (Input.GetKeyDown(KeyCode.G))
            ResourceAS("Glory", -20);
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
                DisplayIndicator(rName, number);
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
            if (pO.GetComponent<BattleParameters>().battleParameters.hitPoints < 0) {
                pO.GetComponent<BattleParameters>().battleParameters.hitPoints = 0;
                pO.SetActive(false);
            }
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

    void DisplayIndicator(string type, int number) {
        GameObject ind;

        switch (type) {
        case "Glory":
            ind = GameObject.Instantiate((number < 0 ? minusIndicator : plusIndicator),
                                          indicatorOrigins[0].position,
                                          Quaternion.identity) as GameObject;
            //ind.gameObject.GetComponent<RectTransform>().parent = indicatorOrigins[0];
            ind.gameObject.GetComponent<RectTransform>().SetParent(indicatorOrigins[0]);
        break;
        case "Food":
            ind = GameObject.Instantiate((number < 0 ? minusIndicator : plusIndicator),
                                          indicatorOrigins[1].position,
                                          Quaternion.identity) as GameObject;
            //ind.gameObject.GetComponent<RectTransform>().parent = indicatorOrigins[1];
            ind.gameObject.GetComponent<RectTransform>().SetParent(indicatorOrigins[1]);
        break;
        case "Stone":
            ind = GameObject.Instantiate((number < 0 ? minusIndicator : plusIndicator),
                                          indicatorOrigins[2].position,
                                          Quaternion.identity) as GameObject;
            //ind.gameObject.GetComponent<RectTransform>().parent = indicatorOrigins[2];
            ind.gameObject.GetComponent<RectTransform>().SetParent(indicatorOrigins[2]);
        break;
        case "Soul":
            ind = GameObject.Instantiate((number < 0 ? minusIndicator : plusIndicator),
                                          indicatorOrigins[3].position,
                                          Quaternion.identity) as GameObject;
            //ind.gameObject.GetComponent<RectTransform>().parent = indicatorOrigins[3];
            ind.gameObject.GetComponent<RectTransform>().SetParent(indicatorOrigins[3]);
        break;
        case "Wood":
            ind = GameObject.Instantiate((number < 0 ? minusIndicator : plusIndicator),
                                          indicatorOrigins[4].position,
                                          Quaternion.identity) as GameObject;
            //ind.gameObject.GetComponent<RectTransform>().parent = indicatorOrigins[4];
            ind.gameObject.GetComponent<RectTransform>().SetParent(indicatorOrigins[4]);
        break;
        }
    }
}
