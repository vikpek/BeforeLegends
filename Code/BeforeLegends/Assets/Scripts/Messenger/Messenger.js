import System.Collections.Generic;

#pragma strict

static var instance : Messenger;

var listeners : Hashtable = Hashtable();
var messages : ArrayList = ArrayList();

function Awake(){
	if(!instance) instance = this;
}

function Update(){
	for(var msg : Message in messages){
		var list : ArrayList = listeners[msg.type];
		if(list){
			for(var listener : GameObject in list){
				listener.SendMessage("onEvent_" + msg.type, msg, SendMessageOptions.DontRequireReceiver);
			}
		}
	}
	messages.Clear();
}

function send(msg : Message){
	messages.Add(msg);
}

function listen(go : GameObject, type : String){
	var list : ArrayList = listeners[type];
	if(list){
		list = listeners[type];
		if(list.Contains(go)) return;
	}else{
		list = ArrayList();
		listeners[type] = list;
	}
	
	list.Add(go);
}

function ignore(go : GameObject, type : String){
	var list : ArrayList = listeners[type];
	if(list) list.Remove(go);
} 

