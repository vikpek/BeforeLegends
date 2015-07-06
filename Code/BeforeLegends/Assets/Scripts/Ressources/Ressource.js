#pragma strict

var rType : String;
var rValue : int;
var pos : Vec2i;

var cooldown : int;

var fallSpeed : float; 
var fall : boolean = false;

function Update() {
	if(gameObject.transform.position.y > 0 && fall == true) {
		gameObject.transform.position.y = gameObject.transform.position.y - fallSpeed;
	}
}

function Respawn() {
    fall = false;
    gameObject.transform.position.y = 10;
    FogOfWar.instance.SetLayerRecursively(gameObject, 15);

    RessourceMaster.instance.toDelete.Add(gameObject);
    gameObject.SetActive(true);
}