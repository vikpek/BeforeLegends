using UnityEngine;
using System.Collections;

public class TileCursor : MonoBehaviour
{
    void Update()
    {
        if(WorldMapGenerator.instance.generationComplete)
        {
            if (WorldMapData.instance.tiles[MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y].traversable)
            {
                transform.position = new Vector3(MouseTileInput.instance.lastTilePos.x, transform.position.y, MouseTileInput.instance.lastTilePos.z);
            }
        }
    }
}
