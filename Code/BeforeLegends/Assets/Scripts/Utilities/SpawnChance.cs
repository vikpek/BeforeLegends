using UnityEngine;
using System.Collections;

[System.Serializable]
public class SpawnChance
{
    public string tileType;

    public float hornedLion;
    public float silverLion;
    public float greenLion;
    public float iceLion;  
    public float desertLion;

    public float chance;

    public void overallDropChance()
    {
        chance = hornedLion + silverLion;
    }

    public int returnSpawn()
    {
        float rand = Random.Range(0.0f, chance);
        if (rand >= 0 && rand < hornedLion)
            return 0;
        if (rand > chance - silverLion && rand <= chance)
            return 1;
        return 999;
    }
}
