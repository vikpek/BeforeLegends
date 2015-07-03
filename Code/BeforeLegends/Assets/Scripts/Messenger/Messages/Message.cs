using UnityEngine;
using System.Collections;

class Message{
	public string type;
	
	void Message(string type){
		this.type = type;
	}
}

class ActionEndedMessage : Message{

	void ActionEndedMessage(){
		super("ActionEnded");
	}
}