using UnityEngine;
using System.Collections;

class Message{
	public string type;
    public void super(string type)
    {
        this.type = type;
    }

	public Message(string type){
		this.type = type;
	}
}

class ActionEndedMessage : Message{

    public ActionEndedMessage(string type)
    {
        super("ActionEnded");
	}
}