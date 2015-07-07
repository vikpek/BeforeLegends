using UnityEngine;
using System.Collections;

public class Messenger : MonoBehaviour {

    public static Hashtable listeners;
    public ArrayList messages;

    private static Messenger _instance;

    public static Messenger instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<Messenger>();
            return _instance;
        }
    }

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
                int i = 0;
			    foreach(var listener in list)
                {
                    i++;
                    print("i: " + i);
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

    public void listen(GameObject go, string type)
    {
        ArrayList list = new ArrayList();
	    list = listeners[type] as ArrayList;
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
