#pragma strict

function Awake () {
	Messenger.instance.listen(gameObject, "MapObjectMoved");
}

function onEvent_MapObjectMoved(msg : MapObjectMovedMessage){
	Debug.Log("Moved to " + msg.objData.pos.ToString());
}