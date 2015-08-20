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
    public Text numOfEnemys;
    public GameObject world;

    EnemyAI[] enemyAIs;
    int actualEnemyTurnIndex = 0;
    public bool nextEnemyDoTurn = false;
    public List<LPathfinding> activeLPFs = new List<LPathfinding>();

    private Image nextTurnButton;
    private MapObjectCarrier olafMapObjectCarrier;
    public Sprite button_h;
    public Sprite button;

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

        if (WorldMapGenerator.instance.generationComplete)
        {
            if (Input.GetKeyDown("space") && numActions == 0)
                EnemyTurn();

            if (nextEnemyDoTurn && world.activeSelf)
                NextEnemyTurn();


            if (nextTurnButton == null)
                nextTurnButton = GameObject.Find("NextTurn").GetComponent<Image>();
            if (olafMapObjectCarrier == null)
                olafMapObjectCarrier = GameObject.Find("Olaf").GetComponent<MapObjectCarrier>();

            if (olafMapObjectCarrier.moved >= olafMapObjectCarrier.movedMax)
            {
                if (Mathf.Sin(Time.time * 5) < 0)
                    nextTurnButton.sprite = button_h;
                else
                    nextTurnButton.sprite = button;
            }
            else
            {
                nextTurnButton.sprite = button;
            }
        }
    }

    public void EnemyTurn() {
        Messenger.instance.send(new TurnEndedMessage(turn));
        enemyAIs = FindObjectsOfType(typeof(EnemyAI)) as EnemyAI[];
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
        }
        nextEnemyDoTurn = false;
    }

    public void NextTurn()
    {
        turn++;
        AudioMaster.instance.wmRoundEndingA040Play();
        turnNumber.text = "Turn: " + turn;
        Messenger.instance.send(new TurnBeganMessage(turn));
    }
}
