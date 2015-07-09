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
        if (rand > hornedLion && rand < hornedLion + silverLion)
            return 1;
        if (rand > hornedLion + silverLion && rand < hornedLion + silverLion + desertLion)
            return 2;
        if (rand > hornedLion + silverLion + desertLion && rand < hornedLion + silverLion + desertLion + iceLion)
            return 3;
        if (rand > hornedLion + silverLion + desertLion + iceLion && rand <= chance)
            return 4;
        return 999;
    }
}
