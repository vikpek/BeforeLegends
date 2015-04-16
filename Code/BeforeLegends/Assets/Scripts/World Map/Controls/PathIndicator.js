#pragma strict

import System.Collections.Generic;

static var instance : PathIndicator;

var prefab : GameObject;

@HideInInspector
var hidden : boolean = false;
@HideInInspector
var path : Vec2i[];
@HideInInspector
var gos : List.<GameObject>;

function Awake(){
	if(!instance) instance = this;
}

function Start(){
	Messenger.instance.listen(gameObject, "MouseTileChanged");
	Messenger.instance.listen(gameObject, "ActionStarted");
	Messenger.instance.listen(gameObject, "AllActionsEnded");
	Messenger.instance.listen(gameObject, "TurnBegan");
}

function updatePath(newPath : Vec2i[]){
	if(!newPath){
		for(var go : GameObject in gos){
			go.SetActive(false);
		}
		return;
	}
	if(!gos) gos = new List.<GameObject>();
	var size : int = gos.Count;
	if(size > newPath.Length){
		for(var i = newPath.Length - 1; i < size; i++){
			gos[i].SetActive(false);
		} 
	}else if (size < newPath.Length){
		for(i = size; i < newPath.Length; i++){
			gos.Add(Instantiate(prefab, Vector3.zero, Quaternion.identity));
			gos[i].transform.parent = transform;
		}
	}
	for(i = 0; i < newPath.Length; i++){
		gos[i].SetActive(true);
		gos[i].transform.position = WorldMapData.getInstance().tiles[newPath[i].x, newPath[i].y].position;
		gos[i].transform.position.y += 0.2;
	}
}

function hide(){
	hidden = true;
	for(var go : GameObject in gos){
		go.SetActive(false);
	}
}

function unhide(){
	hidden = false;
	redraw(MouseTileInput.instance.lastTile);
}

function redraw(goal : Vec2i){
	var target : MapObjectCarrier = InterfaceData.getInstance().selectedCarrier;
	if(!target) return;
	updatePath(WorldMapData.getInstance().findPath(target.pos.x, target.pos.y, goal.x, goal.y, target.movedMax - target.moved));
}

function onEvent_MouseTileChanged(msg : MouseTileChangedMessage){
	if(!hidden) redraw(msg.tile);
}

function onEvent_ActionStarted(msg : ActionStartedMessage){
	hide();
}

function onEvent_AllActionsEnded(msg : AllActionsEndedMessage){
	unhide();
}

function onEvent_TurnBegan(msg : TurnBeganMessage){
	redraw(MouseTileInput.instance.lastTile);
}

