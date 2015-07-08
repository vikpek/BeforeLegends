using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
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

	// Menu
	
	[SerializeField]
	private AudioClip menuClickA002;
	public void MenuClickA002Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(menuClickA002);
	}

	[SerializeField]
	private AudioClip menuGameStartA003;

	[SerializeField]
	private AudioClip wmUnitMovementA004;
	public void WmUnitMovementA004Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitMovementA004);
	}

	[SerializeField]
	private AudioClip wmUnitFoodCollectA005;
	public void WmUnitFoodCollectA005Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitFoodCollectA005);
	}

	[SerializeField]
	private AudioClip wmUnitStoneCollectA007;
	public void WmUnitStoneCollectA007Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitStoneCollectA007);
	}

	[SerializeField]
	private AudioClip wmUnitWoodCollectA008;
	public void WmUnitWoodCollectA008Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitWoodCollectA008);
	}
	
	[SerializeField]
	private AudioClip battleStartA015;
	public void BattleStartA015Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(battleStartA015);
	}

	[SerializeField]
	private AudioClip battleEndVictoryA025;
	public void BattleEndVictoryA025Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(battleEndVictoryA025);
	}

	[SerializeField]
	private AudioClip battleEndDefeatA026;
	public void BattleEndDefeatA026Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(battleEndDefeatA026);
	}


	// Music

	[SerializeField]
	private AudioClip trackWMMainA028;

	[SerializeField]
	private AudioClip trackBMA016;

	[SerializeField]
	private AudioClip trackBMA017;



    public static AudioMaster instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<AudioMaster>();
            return _instance;
        }
    }

    public AudioSource audioSourceEnemies;
	public AudioSource audioSourceMiscSounds;
	public AudioSource audioSourceMusic;

    public List<AudioObject> audioObjects = new List<AudioObject>();


    void Update()
    {
        if (Input.GetKeyDown(KeyCode.D))
            AudioMaster.instance.audioSourceEnemies.PlayOneShot(audioObjects[0].attack);
	
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
