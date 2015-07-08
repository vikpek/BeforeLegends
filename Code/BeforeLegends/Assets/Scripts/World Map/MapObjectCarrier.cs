using UnityEngine;
using System.Collections;

public class MapObjectCarrier : MonoBehaviour {

    public MapObjectData data = new MapObjectData();

    public AudioObject audioObject = new AudioObject();

    public Vec2int pos = new Vec2int(1,1);

    public int movedMax = 8;
    public int moved = 0;

    public bool moving = false;
    public bool paused = false;
    public bool suspend = false;

    private int index = 0;
    float passedTime = 0;
	int lastIndex = 0;
    private Vec2int[] path;
    bool pathWalkAStep = false;
    private bool waitFrame;
    float theDur;
    WorldMapData worlddata;
    public GameObject enemyGameObject;

    void Start(){
	    data.battleStats = GetComponent<BattleParameters>().battleParameters;
        Messenger.instance.listen(gameObject, "TurnEnded");
        //if(gameObject.tag == "Player")
        //    audioObject = AudioMaster.instance.FetchAudioObject("Olaf");
        //else
            //audioObject = AudioMaster.instance.FetchAudioObject(gameObject.name.Substring(0, gameObject.name.Length - 7));
        worlddata = WorldMapData.instance;
    }

    void Update()
    {
        if (pathWalkAStep)
            PathWalkStep();
    }

    void onEvent_TurnEnded()
    {
	    moved = 0;
    }

    public void setPosition(Vec2int pos){
	    this.pos = pos;
	    WorldMapData worlddata = WorldMapData.instance;
	    worlddata.tiles[data.pos.x, data.pos.y].mapObjects.Remove(data);
	    data.pos = pos;
	    worlddata.tiles[data.pos.x, data.pos.y].mapObjects.Add(data);
	    CollectRessources(pos);
	    FogOfWar.instance.CheckTiles(pos, FogOfWar.instance.visionRange);
	    FogOfWar.instance.SetEntitiesToVisible();
	    FogOfWar.instance.SetEntitiesToInvisible();
    }

    public void followPath(Vec2int[] path, float dur) // don't know if that works bc there WAS a yield ._.
    {
	    if(moving || path == null) return;
	    Messenger.instance.send(new ActionStartedMessage());
	    moving = true;
	    this.path = path;
        theDur = dur;
	    passedTime = 0;
	    index = 0;
	    lastIndex = 0;
        pathWalkAStep = true;
    }

    void PathWalkStep()
    {
        if(passedTime / theDur < path.Length - 1)
        {
            float alpha = passedTime / theDur;
            index = (int)alpha; // casted to int - was only "index = alpha;"
            alpha -= index;

            Vector3 a = worlddata.tiles[path[index].x, path[index].y].position;
            Vector3 b = worlddata.tiles[path[index + 1].x, path[index + 1].y].position;
            gameObject.transform.position = new Vector3(Mathf.Lerp(a.x, b.x, alpha), gameObject.transform.position.y, Mathf.Lerp(a.z, b.z, alpha));

            bool reachedNext = index > lastIndex;
            if (reachedNext)
            {
                moved++;
                setPosition(path[index]);
                lastIndex = index;
                Messenger.instance.send(new MapObjectMovedMessage(data, path[index - 1]));
            }

            if (reachedNext && suspend)
            {
                finalizeAt(index, path, true);
                return;
            }

            if (!paused) passedTime += Time.deltaTime;
        }
        else
        {
            pathWalkAStep = false;
            finalizeAt(path.Length - 1, path, false);
        }
    }

    void finalizeAt(int index, Vec2int[] path, bool suspended){
	    Vector3 end = WorldMapData.instance.tiles[path[index].x, path[index].y].position;
	    gameObject.transform.position = new Vector3(end.x, gameObject.transform.position.y, end.z);
	    setPosition(path[index]);
	    moving = false;
	    suspend = false;
        print("ActionEndedMessage");
	    Messenger.instance.send(new ActionEndedMessage(""));
	    if(!suspended){
		    moved++;
		    Messenger.instance.send(new MapObjectMovedMessage(data, path[index-1]));
	    }
    }

    void CollectRessources(Vec2int pos) {
	    WorldMapData worldData = WorldMapData.instance;
	    if(worldData.tiles[pos.x, pos.y].gameObjectList.Count > 0) {
		    foreach(GameObject gO in worldData.tiles[pos.x, pos.y].gameObjectList) {
			    if(gO.tag == "Ressource") {
				    ResourceManager.instance.ressourcesToDeregister.Add(gO);
				    switch(gO.GetComponent<Ressource>().rType) {
				    case "Food":
					    ResourceManager.instance.ResourceAS("Food", gO.GetComponent<Ressource>().rValue);
					    break;
				    case "Stone":
					    ResourceManager.instance.ResourceAS("Stone", gO.GetComponent<Ressource>().rValue);
					    break;
				    case "Wood":
					    ResourceManager.instance.ResourceAS("Wood", gO.GetComponent<Ressource>().rValue);
					    break;
				    case "Soul":
					    ResourceManager.instance.ResourceAS("Soul", gO.GetComponent<Ressource>().rValue);
					    break;
				    case "default":
					    Debug.Log("Wrong Type");
					    break;
				    }
				    gO.SetActive(false);
			    }
		    }
	    }
    }

    void OnTriggerEnter (Collider other)
    {
	    if(moving) finalizeAt(index, path, true);
    }
}
