using UnityEngine;
using System.Collections;

[System.Serializable]
public class SpawnChance
{
    public string tileType;

    //silver
    public float silverLion;
    public float silverJackal;
    public float silverMammoth;

    //ice
    public float iceLion;
    public float iceJackal;
    public float iceMammoth;

    //green
    public float greenLion;
    public float greenJackal;
    public float greenMammoth;

    //desert
    public float desertLion;
    public float desertJackal;
    public float desertMammoth;
    
    //Random shit
    public float hornedLion;
    public float mammoth;
    public float tigerLion;


    public float chance;

    public void overallSpawnChance()
    {
        chance = silverLion + silverJackal + silverMammoth + 
            iceLion + iceJackal + iceMammoth + 
            greenLion + greenJackal + greenMammoth + 
            desertLion + desertJackal + desertMammoth + 
            hornedLion + mammoth + tigerLion;
    }

    public int returnSpawn()
    {
        float rand = Random.Range(0.0f, chance);
        if (Random.Range(0.0f, chance) < silverJackal / chance)
            return 0;
        else if (Random.Range(0.0f, chance) < silverLion / chance)
            return 1;
        else if (Random.Range(0.0f, chance) < silverMammoth / chance)
            return 2;
        else if (Random.Range(0.0f, chance) < iceJackal / chance)
            return 3;
        else if (Random.Range(0.0f, chance) < iceLion / chance)
            return 4;
        else if (Random.Range(0.0f, chance) < iceMammoth / chance)
            return 5;
        else if (Random.Range(0.0f, chance) < desertJackal / chance)
            return 6;
        else if (Random.Range(0.0f, chance) < desertLion / chance)
            return 7;
        else if (Random.Range(0.0f, chance) < desertMammoth / chance)
            return 8;
        else if (Random.Range(0.0f, chance) < greenJackal / chance)
            return 9;
        else if (Random.Range(0.0f, chance) < greenLion / chance)
            return 10;
        else if (Random.Range(0.0f, chance) < greenMammoth / chance)
            return 11;
        else if (Random.Range(0.0f, chance) < hornedLion / chance)
            return 12;
        else if (Random.Range(0.0f, chance) < mammoth / chance)
            return 13;
        else if (Random.Range(0.0f, chance) < tigerLion / chance)
            return 14;
        return 999;
    }
}
