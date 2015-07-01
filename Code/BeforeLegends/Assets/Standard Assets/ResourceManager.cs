using UnityEngine;
using UnityEngine.UI;
using System.Collections;

[System.Serializable]
public class LResource
{
    public string name;
    public int number;
    public Text guiText;
}

public class ResourceManager : MonoBehaviour
{

    public LResource[] resources;



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
            }
        }
    }
}
