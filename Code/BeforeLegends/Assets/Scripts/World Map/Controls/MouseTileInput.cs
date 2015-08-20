using UnityEngine;
using System.Collections;

public class MouseTileInput : MonoBehaviour {

    private static MouseTileInput _instance;

    public static MouseTileInput instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<MouseTileInput>();
            return _instance;
        }
    }

    public Vec2int lastTile = new Vec2int(0, 0);
    public Vec2int actualTile = new Vec2int(0, 0);

    public Vector3 lastTilePos = Vector3.zero;

    public Vector3  lastWorldPos = Vector3.zero;

    void Update(){
        if (WorldMapGenerator.instance.generationComplete)
        {
            RaycastHit hit;
            WorldMapData data = WorldMapData.instance;
            Ray r = Camera.main.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(r, out hit))
            {
                int newTileY = (int)Mathf.Round(hit.point.z / (data.flatHex.size.z * 0.75f));
                if (newTileY >= 0 && newTileY < data.size.y)
                {
                    bool odd = newTileY % 2 == 1;
                    int newTileX = (int)Mathf.Round((hit.point.x - (odd ? data.flatHex.extents.x : 0)) / data.flatHex.size.x);
                    if (newTileX >= 0 && newTileX < data.size.x)
                    {
                        lastWorldPos = hit.point;
                        if (newTileX != lastTile.x || newTileY != lastTile.y)
                        {
                            Messenger.instance.send(new MouseTileChangedMessage(lastTile, lastTilePos, lastWorldPos));
                        }
                        actualTile.x = newTileX;
                        actualTile.y = newTileY;
                        lastTile.y = newTileY;
                        lastTile.x = newTileX;
                        lastTilePos = data.tiles[newTileX, newTileY].position;
                    }
                }
            }
        }
    }	
}
