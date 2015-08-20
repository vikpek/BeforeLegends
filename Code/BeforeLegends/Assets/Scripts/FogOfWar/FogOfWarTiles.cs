using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public struct FOWTileToFlip
{
    public float xRotateFactor;
    public float zRotateFactor;
    public Vec2int vec2IntPosition;
    public int tileType;
    public bool flipped;
}

public class FogOfWarTiles : MonoBehaviour {

    private static FogOfWarTiles _instance;
    public float tileAnimationDelay;
    float actualTileAnimationDelay = 0;
    public GameObject flipTilePrefab;

    public AnimationCurve rotationOverTime;
    public AnimationCurve heightOverTime;
    public float rotateTime;

    List<FOWTileToFlip> tilesToFlip = new List<FOWTileToFlip>();
    List<FOWTileToFlip> tilesToChangeText = new List<FOWTileToFlip>();
    public List<FOWTileToFlip> tilesToFlipActive = new List<FOWTileToFlip>();
    

    public bool cheatEnabled = false;
    int cheatFlipAtOnce = 96;

    public static FogOfWarTiles instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<FogOfWarTiles>();
            return _instance;
        }
    }

	// Use this for initialization
	void Start () {
	    
	}

    IEnumerator TileFlipAnimation(FOWTileToFlip iFoWTileToFlip)
    {
        tilesToFlipActive.Add(iFoWTileToFlip);
        float actualRotateTime = 0;
        GameObject flippingTile = Instantiate(flipTilePrefab, WorldMapData.instance.tiles[iFoWTileToFlip.vec2IntPosition.x, iFoWTileToFlip.vec2IntPosition.y].position, Quaternion.identity) as GameObject;
        WorldMapGenerator.instance.ChangeTileTexture(iFoWTileToFlip.vec2IntPosition, 37);
        flippingTile.GetComponentsInChildren<MeshRenderer>()[0].material.mainTexture = WorldMapGenerator.instance.tileTextures[iFoWTileToFlip.tileType];
        yield return new WaitForEndOfFrame();


        while (actualRotateTime < rotateTime)
        {
            actualRotateTime += Time.deltaTime;

            flippingTile.transform.localEulerAngles = new Vector3(rotationOverTime.Evaluate(actualRotateTime / rotateTime) * 180, 0, 0);
            //flippingTile.transform.rotation = Quaternion.Inverse(Quaternion.Euler(new Vector3(rotationOverTime.Evaluate(actualRotateTime / rotateTime) * 180, 0, 0)));
            flippingTile.transform.position = new Vector3(flippingTile.transform.position.x, heightOverTime.Evaluate(actualRotateTime / rotateTime), flippingTile.transform.position.z);

            if (flippingTile.transform.localEulerAngles.x > 180)
                flippingTile.transform.localEulerAngles = new Vector3(180, 0, 0);

            yield return new WaitForEndOfFrame();
        }
        actualRotateTime = 0;
        WorldMapGenerator.instance.ChangeTileTexture(iFoWTileToFlip.vec2IntPosition, iFoWTileToFlip.tileType);
        Destroy(flippingTile);
        tilesToChangeText.Add(iFoWTileToFlip);
        tilesToFlipActive.Remove(iFoWTileToFlip);
    }

    public void Cheat()
    {
        cheatEnabled = true;

        for (int x = 0; x < WorldMapGenerator.instance.size.x; x++)
        {
            for (int y = WorldMapGenerator.instance.size.y - 1; 0 <= y; y--)
            {
                AddTileToUnFOW(WorldMapData.instance.tiles[y, x].gridPos, WorldMapData.instance.tiles[y, x].matID, new Vec2int(0, 0));
            }
        }
    }

    public void AddTileToUnFOW(Vec2int iTilePosition, int iTileType, Vec2int rotateAwayFrom)
    {
        FOWTileToFlip tempFOWTileToFlip = new FOWTileToFlip();

        if (iTilePosition.x > rotateAwayFrom.x)
            tempFOWTileToFlip.xRotateFactor = 1;
        else if (iTilePosition.x == rotateAwayFrom.x)
            tempFOWTileToFlip.xRotateFactor = 0;
        else
            tempFOWTileToFlip.xRotateFactor = -1;

        if (iTilePosition.y > rotateAwayFrom.y)
            tempFOWTileToFlip.zRotateFactor = 1;
        else if (iTilePosition.y == rotateAwayFrom.y)
            tempFOWTileToFlip.zRotateFactor = 0;
        else
            tempFOWTileToFlip.zRotateFactor = -1;

        tempFOWTileToFlip.tileType = iTileType;
        tempFOWTileToFlip.vec2IntPosition = iTilePosition;
        tempFOWTileToFlip.flipped = false;

        tilesToFlip.Add(tempFOWTileToFlip);
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.X))
        {
            Cheat();
        }
	    if(tilesToFlip.Count != 0)
        {
            actualTileAnimationDelay += Time.deltaTime;
            if(actualTileAnimationDelay > tileAnimationDelay)
            {
                actualTileAnimationDelay = 0;
                if(cheatEnabled)
                {
                    if (tilesToFlip.Count < cheatFlipAtOnce)
                        cheatFlipAtOnce = tilesToFlip.Count;
                    for(int i = 0; i < cheatFlipAtOnce; i++)
                    {
                        StartCoroutine(TileFlipAnimation(tilesToFlip[0]));
                        tilesToFlip.RemoveAt(0);
                    }
                }
                else
                {
                    StartCoroutine(TileFlipAnimation(tilesToFlip[0]));
                    tilesToFlip.RemoveAt(0);
                }
            }
        }
        else
        {
            actualTileAnimationDelay = 0;
        }
	}
}
