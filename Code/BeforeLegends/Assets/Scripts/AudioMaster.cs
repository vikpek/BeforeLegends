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
	private AudioClip wmUnitFoodCollectA005_1;
	[SerializeField]
	private AudioClip wmUnitFoodCollectA005_2;
	[SerializeField]
	private AudioClip wmUnitFoodCollectA005_3;
	[SerializeField]
	private AudioClip wmUnitFoodCollectA005_4;

	public void WmUnitFoodCollectA005Play(){
		switch (Random.Range(0,4)) {
			case 0:
				AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitFoodCollectA005_1);
				break;
			case 1:
				AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitFoodCollectA005_2);
				break;
			case 2:
				AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitFoodCollectA005_3);
				break;
			case 3:
				AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitFoodCollectA005_4);
				break;
			default:
				break;
		}
	}

	[SerializeField]
	private AudioClip wmUnitStoneCollectA007_1;
	[SerializeField]
	private AudioClip wmUnitStoneCollectA007_2;

	public void WmUnitStoneCollectA007Play(){
		Random rand = new Random();
		
		if (Random.Range(0, 2) == 0)
			AudioMaster.instance.audioSourceMiscSounds.PlayOneShot(wmUnitStoneCollectA007_1);
		else
			AudioMaster.instance.audioSourceMiscSounds.PlayOneShot(wmUnitStoneCollectA007_2);

	}

	[SerializeField]
	private AudioClip wmUnitWoodCollectA008_1;
	[SerializeField]
	private AudioClip wmUnitWoodCollectA008_2;
	public void WmUnitWoodCollectA008Play(){

		Random rand = new Random();
		
		if (Random.Range(0, 2) == 0)
			AudioMaster.instance.audioSourceMiscSounds.PlayOneShot(wmUnitWoodCollectA008_1);
		else
			AudioMaster.instance.audioSourceMiscSounds.PlayOneShot(wmUnitWoodCollectA008_2);

	}
	
	[SerializeField]
	private AudioClip battleStartA015;
	public void BattleStartA015Play(){
		AudioMaster.instance.audioSourceMusic.PlayOneShot(battleStartA015);

	}

	[SerializeField]
	private AudioClip battleEndVictoryA025;
	public void BattleEndVictoryA025Play(){
		AudioMaster.instance.audioSourceMiscSounds.PlayOneShot(battleEndVictoryA025);
	}

	[SerializeField]
	private AudioClip battleEndDefeatA026;
	public void BattleEndDefeatA026Play(){
		AudioMaster.instance.audioSourceMiscSounds.PlayOneShot(battleEndDefeatA026);
	}


	[SerializeField]
	private AudioClip boardgamePieceClickA038_1;
	[SerializeField]
	private AudioClip boardgamePieceClickA038_2;
	[SerializeField]
	private AudioClip boardgamePieceClickA038_3;

	public void boardgamePieceClickA038Play(){
		switch (Random.Range(0,3)) {
		case 0:
			AudioMaster.instance.audioSourceEnemies.PlayOneShot(boardgamePieceClickA038_1);
			break;
		case 1:
			AudioMaster.instance.audioSourceEnemies.PlayOneShot(boardgamePieceClickA038_2);
			break;
		case 2:
			AudioMaster.instance.audioSourceEnemies.PlayOneShot(boardgamePieceClickA038_3);
			break;
		default:
			break;
		}
	}


	[SerializeField]
	private AudioClip wmUnitSoulCollectA039;
	public void wmUnitSoulCollectA039Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmUnitSoulCollectA039);
	}

	[SerializeField]
	private AudioClip wmRoundEndingA040;
	public void wmRoundEndingA040Play(){
		AudioMaster.instance.audioSourceEnemies.PlayOneShot(wmRoundEndingA040);
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
    public AudioSource audioSource;
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
