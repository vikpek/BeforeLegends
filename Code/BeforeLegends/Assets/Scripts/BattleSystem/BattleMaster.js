#pragma strict
import UnityEngine.UI;

static var instance : BattleMaster;

var result : float[];
var isCrit : float;
var damage : float;

var uiButton : Button;
var uiText : Text; 

function Awake() {
	if(!instance) instance = this;
}

function combatSequence(player: UnitData, opponent : UnitData){
	CurrentMap.instance.toggle();
	//Debug.Log("Player:\nAttack: " + player.attack + "\nHP: " + player.hitPoints);
	//Debug.Log("Opponent:\nAttack: " + opponent.attack + "\nHP: " + opponent.hitPoints);
	//uiButton.GetComponent.<Image>().enabled = true;
	uiButton.gameObject.SetActive(true);
	var odd : boolean = true;
	while(player.hitPoints > 0 && opponent.hitPoints > 0){
		var damage : float;
		if(odd){
			result = player.calcDamage(opponent) as float[];
			damage = result[0];
			isCrit = result[1];
			opponent.hitPoints -= damage;
			//Debug.Log("Player hit Opponent for " + damage + (isCrit ? " critical" : "") + " damage! Opponent has only " + opponent.hitPoints + " left.");
			uiText.text += "Player hit Opponent for " 
						+ damage.ToString("F1") 
						+ (isCrit ? " critical" : "") 
						+ " damage!\n" 
						+ (opponent.hitPoints < 0 ? " Opponent has no" : " Opponent has " + opponent.hitPoints.ToString("F1") )
						+ " HP left.\n\n";

			if(opponent.hitPoints < 0){
				opponent.hitPoints = 0;
			}
		}else{
			result = opponent.calcDamage(player) as float[];
			damage = result[0];
			isCrit = result[1];
			player.hitPoints -= damage;
			//Debug.Log("Opponent hit Player for " + damage + (isCrit ? " critical" : "") + " damage! Player has only " + player.hitPoints + " left.");
			uiText.text += "Opponent hit Player for " 
						+ damage.ToString("F1") 
						+ (isCrit ? " critical" : "") 
						+ " damage!\n"
						+ (player.hitPoints < 0 ? " Player has no" : "Player has " + player.hitPoints.ToString("F1") )
						+ " HP left.\n\n";

			if(player.hitPoints < 0){
				player.hitPoints = 0;
			}
		}
		odd = !odd;
	}
	
	if(player.hitPoints > 0){
		//Debug.Log("Player won!");
		uiText.text += "Player won!";
		return 1;
	}else{
		//Debug.Log("Opponent won!");
		uiText.text += "Opponent won!\nPlayer is dead!";
		return 0;
	}
	
}