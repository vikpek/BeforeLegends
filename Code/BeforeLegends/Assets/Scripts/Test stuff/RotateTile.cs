using UnityEngine;
using System.Collections;

public class RotateTile : MonoBehaviour {

    GameObject player;
    Vec2int pos;

    void Update () {
	    if(Input.GetKeyDown(KeyCode.G)) {
		    pos = player.GetComponent<MapObjectCarrier>().pos;
            WorldMapData worlddata = WorldMapData.instance;
		    //worlddata.tiles[pos.x, pos.y].gameObject;
	    }
    }
}
