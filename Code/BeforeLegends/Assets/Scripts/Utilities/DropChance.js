//DONE


public class DropChance{
 var tileType : String;

 var woodDropChance : float;
 var stoneDropChance : float;
 var foodDropChance : float;
 var soulsDropChance : float;

 var chance : float;

 public function overallDropChance() {
 	chance = woodDropChance + stoneDropChance + foodDropChance + soulsDropChance;
 }
 public function returnDrop() : int {
 	var rand : float = Random.Range(0.0, chance);
 	if(rand >= 0 && rand < woodDropChance)
 		return 2;
 	if(rand > woodDropChance && rand < chance - foodDropChance - soulsDropChance)
 		return 1;
 	if(rand > chance - foodDropChance - soulsDropChance && rand < chance - soulsDropChance)
 		return 0;
 	if(rand > chance - soulsDropChance && rand <= chance)
 		return 3;
 }
}