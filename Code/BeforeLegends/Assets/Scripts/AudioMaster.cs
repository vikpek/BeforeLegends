using UnityEngine;
using System.Collections;
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

    private static AudioMaster _instance;

    public static AudioMaster instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<AudioMaster>();
            return _instance;
        }
    }

    public AudioSource audioSource;

    List<AudioObject> audioObjects = new List<AudioObject>();

	
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.D))
            AudioMaster.instance.audioSource.PlayOneShot(audioObjects[0].attack);
	
	}

    public AudioObject FetchAudioObject(string objName)
    {
	    foreach(AudioObject o in audioObjects) {
		    if(o.objectName == objName)
			    return o;
	    }
	    return null;
    }
}
