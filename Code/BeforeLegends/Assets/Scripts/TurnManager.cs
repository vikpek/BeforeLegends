using UnityEngine;
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

    int turn;
    int numActions;

    void Start(){
	    Messenger.instance.listen(gameObject, "ActionStarted");
	    Messenger.instance.listen(gameObject, "ActionEnded");
    }

    void onEvent_ActionStarted(){
	    numActions++;
    }

    void onEvent_ActionEnded(){
	    numActions--;
	    if(numActions == 0) Messenger.instance.send(new AllActionsEndedMessage());
    }

    void Update(){
	    if(Input.GetKeyDown("space") && numActions == 0){
		    Messenger.instance.send(new TurnEndedMessage(turn));
		    turn++;
            Messenger.instance.send(new TurnBeganMessage(turn));
	    }
    }
}
