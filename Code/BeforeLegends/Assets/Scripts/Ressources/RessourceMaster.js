#pragma strict

static var instance : RessourceMaster;

var rm : ResourceManager;

var shop : Shop; 

var textScore : UI.Text; 

var valueWood : int;
var valueFood : int;
var valueStone : int;
var valueSoul : int;
var valueScore : int;

var loseHealthInPercent : float;
var generateHealthInPercent : float;

var ressourcesToDeregister : List.<GameObject> = new List.<GameObject>();

function Start() {
	if(!instance) instance = this;

	valueWood = 100;
	valueStone = 100;
	valueFood = 100;
	valueSoul = 100;
	valueScore = 0;


}

function Update() {
    for(var i : int = 0; i < rm.resources.Length; i++)
    {
        if(rm.resources[i].name == "Wood") valueWood = rm.resources[i].number;
        if(rm.resources[i].name == "Stone") valueStone = rm.resources[i].number;
        if(rm.resources[i].name == "Food") valueFood = rm.resources[i].number;
        if(rm.resources[i].name == "Soul") valueSoul = rm.resources[i].number;
    }
    
	if(valueStone < 0) valueStone = 0;
	if(valueWood < 0) valueWood = 0;
	if(valueFood < 0) valueFood = 0;
	if(valueSoul < 0) valueSoul = 0;

	CheckHP();


	textScore.text = valueScore + "";
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

public function WoodAS(number : int) // AS == Add / Subtract
{
    rm.ResourceAS("Wood", number);
}

public function StoneAS(number : int)
{
    rm.ResourceAS("Stone", number);
}

public function FoodAS(number : int)
{
    rm.ResourceAS("Food", number);
}

public function SoulAS(number : int)
{
    rm.ResourceAS("Soul", number);
}