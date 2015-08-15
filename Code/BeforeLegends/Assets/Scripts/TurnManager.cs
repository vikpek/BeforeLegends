using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class TurnManager : MonoBehaviour {

    private static TurnManager _instance;

    public static TurnManager instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<TurnManager>();
            return _instance;
        }
    }

    public int turn;
    public int numActions;
    public Text turnNumber;
    //public Text numOfEnemys;
    public GameObject world;

    EnemyAI[] enemyAIs;
    int actualEnemyTurnIndex = 0;
    public bool nextEnemyDoTurn = false;
    public List<LPathfinding> activeLPFs = new List<LPathfinding>();

    void Start(){
	    Messenger.instance.listen(gameObject, "ActionStarted");
	    Messenger.instance.listen(gameObject, "ActionEnded");
    }

    void onEvent_ActionStarted(){
	    numActions++;
    }

    void onEvent_ActionEnded(){
	    numActions--;
        if (numActions < 0) numActions = 0;
	    if(numActions == 0) Messenger.instance.send(new AllActionsEndedMessage());
    }

    void LateUpdate(){
	    if(Input.GetKeyDown("space") && numActions == 0)
            EnemyTurn();

        if (nextEnemyDoTurn && world.activeSelf)
            NextEnemyTurn();
    }

    public void EnemyTurn() {
        Messenger.instance.send(new TurnEndedMessage(turn));
        enemyAIs = FindObjectsOfType(typeof(EnemyAI)) as EnemyAI[];
        //numOfEnemys.text = "EnemyAIs in Array: " + enemyAIs.Length;
        nextEnemyDoTurn = true;
    }

    public void NextEnemyTurn()
    {
        if (actualEnemyTurnIndex >= enemyAIs.Length)
        {
            NextTurn();
            actualEnemyTurnIndex = 0;
        }
        else
        {
            enemyAIs[actualEnemyTurnIndex].HuntPlayer();
            actualEnemyTurnIndex++;
            //numOfEnemys.text = "EnemyAIs in Array: " + enemyAIs.Length + ", actualEnemyTurnIndex: " + actualEnemyTurnIndex;
        }
        nextEnemyDoTurn = false;
    }

    public void NextTurn()
    {
        turn++;
        //turnNumber.text = "Turn: " + turn;
        Messenger.instance.send(new TurnBeganMessage(turn));
    }
}
