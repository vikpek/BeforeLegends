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
 	if(rand > woodDropChance && rand < chance - stoneDropChance)
 		return 1;
 	if(rand > chance - stoneDropChance && rand < chance - foodDropChance)
 		return 0;
 	if(rand > chance - foodDropChance && rand <= chance - soulsDropChance)
 		return 3;
 }
}