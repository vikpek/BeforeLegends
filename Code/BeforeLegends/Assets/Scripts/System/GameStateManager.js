﻿#pragma strict

static var instance : GameStateManager;

var world : GameObject;
var battle : GameObject;

var state : int = 0;
var lastBattleResult : boolean = true;

function Start(){
	instance = this;
}

function startBattle(opponent : UnitData){
	state = 1;
	battle.SetActive(true);
	world.SetActive(false);
}

function endBattle(result : boolean){
	state = 0;
	world.SetActive(true);
	battle.SetActive(false);
}