using UnityEngine;
using System.Collections;

public static class Messenger {

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
	    foreach(Message message in msgs)
        {
		    Message msg = message;
		    ArrayList list = listeners[msg.type] as ArrayList;

		    if(list != null)
            {
			    foreach(var listener in list)
                {
                    GameObject go = listener as GameObject;
				    go.SendMessage("onEvent_" + msg.type, msg, SendMessageOptions.DontRequireReceiver);
			    }
		    }
	    }
	}

    public void send(Message msg)
    {
	    messages.Add(msg);
    }

    public static void listen(GameObject go, string type)
    {
	    ArrayList list = listeners[type] as ArrayList;
	    if(list == null){
		    list = new ArrayList();
		    listeners[type] = list;
	    }else if(list.Contains(go)){
		    return;
	    }
	
	    list.Add(go);
    }

    public void ignore(GameObject go, string type){
	    ArrayList list = listeners[type] as ArrayList;
	    if(list != null) list.Remove(go);
    } 
}
