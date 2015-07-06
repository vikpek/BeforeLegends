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

    int state;
    bool lastBattleResult;

    public BattleController battleC;

	// Use this for initialization
	void Start () {
	
	}
	
    public void startBattle(GameObject player, GameObject enemy)
    {
        battleC.init(player, enemy);
	    state = 1;
	    battle.SetActive(true);
	    world.SetActive(false);
    }

    public void endBattle(bool result, int exp)
    {
	    state = 0;
	    world.SetActive(true);
	    battle.SetActive(false);
	    ResourceManager.instance.ResourceAS("exp", exp);
	    olaf.exp += exp;
        olaf.LevelUp();
    }

	// Update is called once per frame
	void Update () {
	
	}
}
