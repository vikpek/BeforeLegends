#pragma strict

static var instance : RessourceMaster;

var textWood : UI.Text;
var textFood : UI.Text;
var textStone : UI.Text;
var textScore : UI.Text; 

var valueWood : int;
var valueFood : int;
var valueStone : int;
var valueScore : int;

var loseHealthInPercent : float;
var generateHealthInPercent : float;

var ressourcesToDeregister : List.<GameObject> = new List.<GameObject>();

function Start() {
	if(!instance) instance = this;

	valueWood = 0;
	valueStone = 0;
	valueFood = 0;
	valueScore = 0;

	textWood.text = valueWood + " Wood";
	textFood.text = valueFood + " Food";
	textStone.text = valueStone + " Stone";
}

function Update() {
	if(valueStone < 0) valueStone = 0;
	if(valueWood < 0) valueWood = 0;
	if(valueFood <= 0) valueFood = 0;
	
	CheckHP();

	textWood.text = valueWood + " Wood";
	textFood.text = valueFood + " Food";
	textStone.text = valueStone + " Stone";
	textScore.text = valueScore + " Points";
}

function LoseHealthToHunger() {
	var player : GameObject[] = GameObject.FindGameObjectsWithTag("Player");
	for(var pO : GameObject in player) {
		pO.GetComponent.<BattleParameters>().battleParameters.hitPoints -= pO.GetComponent.<BattleParameters>().battleParameters.maxHitPoints * loseHealthInPercent;
	}
}

function RegenerateHealthThroughEating() {
	var player : GameObject[] = GameObject.FindGameObjectsWithTag("Player");
	for(var pO : GameObject in player) {
		pO.GetComponent.<BattleParameters>().battleParameters.hitPoints += pO.GetComponent.<BattleParameters>().battleParameters.maxHitPoints * generateHealthInPercent;
		if(pO.GetComponent.<BattleParameters>().battleParameters.hitPoints > pO.GetComponent.<BattleParameters>().battleParameters.maxHitPoints) {
			pO.GetComponent.<BattleParameters>().battleParameters.hitPoints = pO.GetComponent.<BattleParameters>().battleParameters.maxHitPoints;
		}
	}
}

function CheckHP() {
	var player : GameObject[] = GameObject.FindGameObjectsWithTag("Player");
	for(var pO : GameObject in player) {
		if(pO.GetComponent.<BattleParameters>().battleParameters.hitPoints <= 0) {
			pO.SetActive(false);
		}
	}
}