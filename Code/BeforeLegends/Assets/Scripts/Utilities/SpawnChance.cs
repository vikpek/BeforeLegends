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

    public void overallSpawnChance()
    {
        chance = hornedLion + silverLion + desertLion + iceLion + greenLion;
    }

    public int returnSpawn()
    {
        float rand = Random.Range(0.0f, chance);
        if (rand >= 0 && rand < hornedLion)
            return 0;
        if (rand > hornedLion && rand < chance - desertLion - iceLion - greenLion)
            return 1;
        if (rand > chance - desertLion - iceLion - greenLion && rand < chance - iceLion - greenLion)
            return 2;
        if (rand > chance - chance - iceLion - greenLion && rand < chance - greenLion)
            return 3;
        if (rand > chance - greenLion && rand <= chance)
            return 4;
        return 999;
    }
}
