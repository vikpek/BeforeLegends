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

        if (rand > 0 && rand < silverLion)
            return 0;
        if (rand > silverLion && 
            rand < silverLion + silverJackal)
            return 1;
        if (rand > silverLion + silverJackal && 
            rand < silverLion + silverJackal + silverMammoth)
            return 2;
        if (rand > silverLion + silverJackal + silverMammoth && 
            rand < silverLion + silverJackal + silverMammoth + iceLion)
            return 3;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion && 
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal)
            return 4;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal && 
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth)
            return 5;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth && 
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion)
            return 6;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion && 
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal)
            return 7;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal &&
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth)
            return 8;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth &&
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion)
            return 9;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion &&
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal)
            return 10;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal &&
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal + desertMammoth)
            return 11;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal + desertMammoth &&
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal + desertMammoth + hornedLion)
            return 12;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal + desertMammoth + hornedLion &&
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal + desertMammoth + hornedLion + mammoth)
            return 13;
        if (rand > silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal + desertMammoth + hornedLion + mammoth &&
            rand < silverLion + silverJackal + silverMammoth + iceLion + iceJackal + iceMammoth + greenLion + greenJackal + greenMammoth + desertLion + desertJackal + desertMammoth + hornedLion + mammoth + tigerLion)
            return 14;
        return 999;


        /*if (Random.Range(0.0f, chance) < silverJackal / chance)
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
        return 999;*/
    }
}
