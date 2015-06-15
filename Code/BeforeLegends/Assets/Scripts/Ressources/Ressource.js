#pragma strict

var rType : String;
var rValue : int;
var pos : Vec2i;

var fallSpeed : float; 
var fall : boolean = false;

function Update() {
	if(gameObject.transform.position.y > 0 && fall == true) {
		gameObject.transform.position.y = gameObject.transform.position.y - fallSpeed;
	}
}