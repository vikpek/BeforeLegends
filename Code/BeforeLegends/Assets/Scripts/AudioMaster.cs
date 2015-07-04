using UnityEngine;
using System.Collections;
using System.Object;
using System.Collections.Generic;

public class AudioObject
{
    public string objectName;
    public AudioClip attack;
    public AudioClip Walk;
    public AudioClip die;
    public AudioClip spattack;
}

public class AudioMaster : MonoBehaviour {

    public AudioSource auddioSource;

    List<AudioObject> audioObjects = new List<AudioObject>();

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    AudioObject FetchAudioObject(string objName)
    {
	    foreach(AudioObject o in audioObjects) {
		    if(o.objectName == objName)
			    return o;
	    }
	    return null;
    }
}
