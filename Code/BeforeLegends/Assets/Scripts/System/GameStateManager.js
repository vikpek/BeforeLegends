﻿#pragma strict

static var instance : GameStateManager;

var world : GameObject;
var battle : GameObject;
var battleMapGui : GameObject;
var worldMapGui : GameObject;

var state : int = 0;
var lastBattleResult : boolean = true;

function Start(){
	instance = this;
}

function startBattle(player : GameObject, enemy : GameObject){
	battle.GetComponent(BattleController).init(player, enemy);
	state = 1;
	battle.SetActive(true);
	world.SetActive(false);
	battleMapGui.SetActive(true);
	worldMapGui.SetActive(false);
}

function endBattle(result : boolean, exp : int){
	state = 0;
	world.SetActive(true);
	battle.SetActive(false);
	battleMapGui.SetActive(false);
	worldMapGui.SetActive(true);
	RessourceMaster.instance.valueScore += exp;
	GameObject.Find("Olaf").GetComponent.<BattleParameters>().exp += exp;
	GameObject.Find("Olaf").GetComponent.<BattleParameters>().LevelUp();
}