using UnityEngine;
using System.Collections;

public class Messenger : MonoBehaviour {

    public Hashtable listeners;
    public ArrayList messages;

	// Use this for initialization
	void Awake() {
        listeners = new Hashtable();
        messages = new ArrayList();
	}
	
	// Update is called once per frame
	void Update () {
        ArrayList msgs = messages; 
        messages = new ArrayList();
	    foreach(ArrayList message in msgs)
        {
		    Message msg = (Message)message;
		    var list : ArrayList = listeners[msg.type] as ArrayList;
		    if(list)
            {
			    for(var listener in list)
                {
				    var go : GameObject = listener as GameObject;
				    go.SendMessage("onEvent_" + msg.type, msg, SendMessageOptions.DontRequireReceiver);
			    }
		    }
	    }
	}
}
