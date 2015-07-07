using UnityEngine;
using System.Collections;

[System.Serializable]
public class DropChance
{
    public string tileType;

    public float woodDropChance;
    public float stoneDropChance;
    public float foodDropChance;
    public float soulsDropChance;

    public float chance;

    public void overallDropChance() 
    {
 	    chance = woodDropChance + stoneDropChance + foodDropChance + soulsDropChance;
    }

    public int returnDrop() 
    {
 	    float rand = Random.Range(0.0f, chance);
 	    if(rand >= 0 && rand < woodDropChance)
 		    return 2;
 	    if(rand > woodDropChance && rand < chance - foodDropChance - soulsDropChance)
 		    return 1;
 	    if(rand > chance - foodDropChance - soulsDropChance && rand < chance - soulsDropChance)
 		    return 0;
 	    if(rand > chance - soulsDropChance && rand <= chance)
 		    return 3;
        return 999;
    }
}
