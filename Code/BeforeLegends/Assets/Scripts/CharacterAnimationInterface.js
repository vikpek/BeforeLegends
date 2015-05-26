#pragma strict

enum Anims{ //ETC ...
	IDLE, ATTACK, HURT
}

var idle : String;
var attack : String;
var hurt : String;

@HideInInspector
var current : String;

var animArr : Animation;

function Start(){
	if(!animArr) animArr = gameObject.GetComponent(Animation);
}

function swapAnimation(a : Anims){
	animArr.CrossFade(lookup(a), 0.5);
}

function isAnimating(a : Anims){
	return animArr[lookup(a)].enabled;
}

function lookup(a : Anims){
	switch(a){
		case Anims.IDLE:
			return idle;
		case Anims.ATTACK:
			return attack;
		case Anims.HURT:
			return hurt;
		default:
			return "";
	}
}