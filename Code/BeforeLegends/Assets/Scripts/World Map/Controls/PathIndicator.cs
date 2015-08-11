using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PathIndicator : MonoBehaviour {

    private static PathIndicator _instance;

    public static PathIndicator instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<PathIndicator>();
            return _instance;
        }
    }

    public GameObject prefab;

    bool hidden = false;
    Vec2int[] path;
    List<GameObject> gos;

    void  Start(){
    	Messenger.instance.listen(gameObject, "MouseTileChanged");
    	Messenger.instance.listen(gameObject, "ActionStarted");
    	Messenger.instance.listen(gameObject, "AllActionsEnded");
    	Messenger.instance.listen(gameObject, "TurnBegan");
    }

    void updatePath(Vec2int[] newPath){
        if (newPath == null)
        {
            if (gos != null)
            {
    		    foreach(GameObject go in gos)
                {
    			    go.SetActive(false);
    		    }
            }
    		return;
    	}
    	if(gos == null) gos = new List<GameObject>();
    	int size = gos.Count;
    	if(size > newPath.Length){
    		for(var i = newPath.Length - 1; i < size; i++){
    			gos[i].SetActive(false);
    		} 
    	}else if (size < newPath.Length){
    		for(int i = size; i < newPath.Length; i++)
            {
    			gos.Add((Instantiate(prefab, Vector3.zero, Quaternion.identity) as GameObject));
    			gos[i].transform.parent = transform;
    		}
    	}
    	for(int i = 0; i < newPath.Length; i++){
    		gos[i].SetActive(true);
    		gos[i].transform.position = WorldMapData.instance.tiles[newPath[i].x, newPath[i].y].position;
    		gos[i].transform.position = new Vector3(gos[i].transform.position.x, gos[i].transform.position.y + 0.2f, gos[i].transform.position.z);
    	}
    }

    void hide(){
    	hidden = true;
    	foreach(GameObject go in gos){
    		go.SetActive(false);
    	}
    }

    void  unhide(){
    	hidden = false;
    	redraw(MouseTileInput.instance.lastTile);
    }

    public void redraw(Vec2int goal){
    	MapObjectCarrier target = InterfaceData.instance.selectedCarrier;
    	if(!target) return;
    	updatePath(WorldMapData.instance.findPath(target.pos.x, target.pos.y, goal.x, goal.y, target.movedMax - target.moved, false));
    }

    void  onEvent_MouseTileChanged(MouseTileChangedMessage msg){
    	if(!hidden) redraw(msg.tile);
    }

    void  onEvent_ActionStarted(ActionStartedMessage msg){
    	hide();
    }

    void  onEvent_AllActionsEnded(AllActionsEndedMessage msg){
    	unhide();
    }

    void  onEvent_TurnBegan(TurnBeganMessage msg){
    	redraw(MouseTileInput.instance.lastTile);
    }

}
