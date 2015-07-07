using UnityEngine;
using System.Collections;

public class MoveOnClick : MonoBehaviour {

    public MapObjectCarrier objData;
    public bool mouseOverUIElement;

    void Update(){
        if(Input.GetMouseButtonDown(0) && !mouseOverUIElement)
        {
		    if(objData == null)
            {
			    objData = gameObject.GetComponent<MapObjectCarrier>();
			    if(objData == null)
                {
				    objData = gameObject.AddComponent<MapObjectCarrier>();
				    objData.setPosition(new Vec2int(MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y));
				    transform.position = WorldMapData.instance.tiles[objData.pos.x, objData.pos.y].position; 
				    InterfaceData.instance.selectedCarrier = objData;
				    FogOfWar.instance.CheckTiles(new Vec2int(objData.pos.x, objData.pos.y), FogOfWar.instance.visionRange);
				    FogOfWar.instance.SetEntitiesToVisible();
				    return;
			    }
		    }

		    Vec2int[] path = WorldMapData.instance.findPath(objData.pos.x, objData.pos.y, MouseTileInput.instance.lastTile.x, MouseTileInput.instance.lastTile.y, objData.movedMax - objData.moved, false);
            foreach (Vec2int v in path)
                print("path: " + v.x + ", " + v.y);
            objData.followPath(path, 0.25f);
	    }
    }

    public void SetMouseOverUIElement(bool yesno)
    {
        mouseOverUIElement = yesno;
    }
}
