using UnityEngine;
using System.Collections;

[System.Serializable]
public class SpawnChance
{
    public string tileType;

    //Lion
    public float silverLion;
    public float iceLion;
    public float greenLion;
    public float desertLion;
    public float hornedLion;
    public float tigerLion;

    //Jackal
    public float silverJackal;
    public float iceJackal;
    public float greenJackal;
    public float desertJackal;
    
    //Mammoth
    public float grasslandMammoth;
    public float arcticMammoth;
    public float jungleMammoth;
    public float desertMammoth;
    public float forestMammoth;

    


    public float chance;

    public void overallSpawnChance()
    {
        chance = silverLion + silverJackal + grasslandMammoth +
            iceLion + iceJackal + arcticMammoth +
            greenLion + greenJackal + jungleMammoth + 
            desertLion + desertJackal + desertMammoth +
            hornedLion + forestMammoth + tigerLion;

        chance *= 0.66f;
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
            rand < silverLion + silverJackal + grasslandMammoth)
            return 2;
        if (rand > silverLion + silverJackal + grasslandMammoth &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion)
            return 3;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal)
            return 4;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth)
            return 5;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion)
            return 6;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal)
            return 7;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth)
            return 8;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion)
            return 9;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal)
            return 10;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal + desertMammoth)
            return 11;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal + desertMammoth &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal + desertMammoth + hornedLion)
            return 12;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal + desertMammoth + hornedLion &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal + desertMammoth + hornedLion + forestMammoth)
            return 13;
        if (rand > silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal + desertMammoth + hornedLion + forestMammoth &&
            rand < silverLion + silverJackal + grasslandMammoth + iceLion + iceJackal + arcticMammoth + greenLion + greenJackal + jungleMammoth + desertLion + desertJackal + desertMammoth + hornedLion + forestMammoth + tigerLion)
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
