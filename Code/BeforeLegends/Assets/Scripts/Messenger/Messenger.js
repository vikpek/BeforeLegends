import System.Collections.Generic;

#pragma strict

static var instance : Messenger;

var listeners : Hashtable = Hashtable();
var messages : ArrayList = ArrayList();

function Awake(){
	if(!instance) instance = this;
}

function Update(){
	var msgs : ArrayList = messages;
	messages = ArrayList();
	for(var message in msgs){
		var msg : Message = message as Message;
		var list : ArrayList = listeners[msg.type] as ArrayList;
		if(list){
			for(var listener in list){
				var go : GameObject = listener as GameObject;
				go.SendMessage("onEvent_" + msg.type, msg, SendMessageOptions.DontRequireReceiver);
			}
		}
	}
}

function send(msg : Message){
	messages.Add(msg);
}

function listen(go : GameObject, type : String){
	var list : ArrayList = listeners[type] as ArrayList;
	if(list == null){
		list = ArrayList();
		listeners[type] = list;
	}else if(list.Contains(go)){
		return;
	}
	
	list.Add(go);
}

function ignore(go : GameObject, type : String){
	var list : ArrayList = listeners[type] as ArrayList;
	if(list) list.Remove(go);
} 

