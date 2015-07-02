using UnityEngine;
using System.Collections;

public class GameStateManager : MonoBehaviour {

    public GameObject world;
    public GameObject battle;
    public BattleParameters olaf;

    int state;
    bool lastBattleResult;

    public BattleController battleC;

	// Use this for initialization
	void Start () {
	
	}
	
    void startBattle(GameObject player, GameObject enemy)
    {
        battleC.init(player, enemy);
	    state = 1;
	    battle.SetActive(true);
	    world.SetActive(false);
    }

    public void endBattle(bool result, int exp){
	state = 0;
	world.SetActive(true);
	battle.SetActive(false);
    //!-------------------
	//RessourceMaster.instance.valueScore += exp;
    //!---------------------
	olaf.exp += exp;
    olaf.LevelUp();
}

	// Update is called once per frame
	void Update () {
	
	}
}
