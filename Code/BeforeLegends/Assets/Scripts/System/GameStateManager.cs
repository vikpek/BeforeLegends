using UnityEngine;
using System.Collections;

public class GameStateManager : MonoBehaviour {

    private static GameStateManager _instance;

    public static GameStateManager instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<GameStateManager>();
            return _instance;
        }
    }

    public GameObject world;
    public GameObject battle;
    public BattleParameters olaf;

    public int state;
    public bool lastBattleResult;

    public BattleController battleC;

    public void startBattle(GameObject player, GameObject enemy)
    {
		AudioMaster.instance.BattleStartA015Play();
        battleC.init(player, enemy);
	    state = 1;
	    battle.SetActive(true);
	    world.SetActive(false);
    }

    public void endBattle(bool result, int exp)
    {
		AudioMaster.instance.audioSourceMusic.Stop();
	    state = 0;
	    world.SetActive(true);
	    battle.SetActive(false);
	    ResourceManager.instance.ResourceAS("exp", exp);
	    olaf.exp += exp;
        olaf.LevelUp();
    }
}
