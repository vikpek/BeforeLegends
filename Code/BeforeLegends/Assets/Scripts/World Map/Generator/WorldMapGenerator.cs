using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;


public class WorldMapGenerator : MonoBehaviour
{
    Material mapMaterial : Material;
    Vec2int size;
    Vec2int chunkSize;
    long seed;
    float erosionScale;
    float continentScale;
    float moistureScale;
    float temperatureScale;
    float erosionWeight;
    float moistureErosionWeight;
    float moistureWeight;
    float continentWeight;
    float temperatureNoiseWeight;
    float temperatureLocationWeight;
    Texture2D[] tileTextures; 

    float[] heightLookup;
    float[] moistureLookup; 
    float[] temperatureLookup;

    //List<DropChance> DropChances = new List<DropChance>();

    int[] water;
    int[] ice;
    int[] ice_mountain;
    int[] tundra;
    int[] savana;
    int[] dry_forest;
    int[] dry_mountain;
    int[] grassland;
    int[] forest;
    int[] forest_mountain;
    int[] desert;
    int[] desert_mountain;
    int[] jungle;
}