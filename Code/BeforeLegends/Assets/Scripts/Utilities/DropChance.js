public class DropChance{
 var tileType : String;

 var woodDropChance : float;
 var stoneDropChance : float;
 var foodDropChance : float;
 var expDropChance : float;

 var chance : float;

 public function overallDropChance() {
 	chance = woodDropChance + stoneDropChance + foodDropChance + expDropChance;
 }
}