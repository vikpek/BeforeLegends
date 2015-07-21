using UnityEngine;
using UnityEngine.UI;
using System.Collections;

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

    void Update(){
	    if(Input.GetKeyDown("space") && numActions == 0){
            NextTurn();
	    }
    }

    public void NextTurn() {
        Messenger.instance.send(new TurnEndedMessage(turn));
        turn++;
        turnNumber.text = "Turn: " + turn;
        Messenger.instance.send(new TurnBeganMessage(turn));
    }
}
