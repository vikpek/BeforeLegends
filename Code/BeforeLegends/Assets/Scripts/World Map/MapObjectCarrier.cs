using UnityEngine;
using System.Collections;

public class MapObjectCarrier : MonoBehaviour {


    #pragma strict

MapObjectData data = new MapObjectData();

//AudioObject audioObject = new AudioObject();

    Vec2int pos;

    int movedMax = 8;
    int moved = 0;

    bool moving = false;
    bool paused = false;
    bool suspend = false;

    private int index = 0;
    private Vec2int[] path;


    public GameObject enemyGameObject;

void Start(){
	data.battleStats = GetComponent<BattleParameters>().battleParameters;
	Messenger.listen(gameObject, "TurnEnded");
	if(gameObject.tag == "Player")
		audioObject = AudioMaster.instance.FetchAudioObject("Olaf");
	else
		audioObject = AudioMaster.instance.FetchAudioObject(gameObject.name.Substring(0, gameObject.name.Length - 7));
}

function onEvent_TurnEnded(){
	moved = 0;
}

function setPosition(pos : Vec2i){
	this.pos = pos;
	var worlddata : WorldMapData = WorldMapData.getInstance();
	worlddata.tiles[data.pos.x, data.pos.y].mapObjects.Remove(data);
	data.pos = pos;
	worlddata.tiles[data.pos.x, data.pos.y].mapObjects.Add(data);
	//CollectRessources(pos);
	FogOfWar.instance.CheckTiles(pos, FogOfWar.instance.visionRange);
	FogOfWar.instance.SetEntitiesToVisible();
	FogOfWar.instance.SetEntitiesToInvisible();
}

function followPath(path : Vec2i[], dur : float){
	if(moving || !path) return;
	Messenger.instance.send(ActionStartedMessage());
	moving = true;
	this.path = path;
	
	var worlddata : WorldMapData = WorldMapData.getInstance();
	var passedTime : float = 0;
	index = 0;
	var lastIndex : int = 0;
	while(passedTime/dur < path.Length - 1){
		var alpha : float = passedTime/dur;
		index = alpha;
		alpha -= index;
		
		var a : Vector3 = worlddata.tiles[path[index].x, path[index].y].position;
		var b : Vector3 = worlddata.tiles[path[index + 1].x, path[index + 1].y].position;
		gameObject.transform.position.x = Mathf.Lerp(a.x, b.x, alpha);
		gameObject.transform.position.z = Mathf.Lerp(a.z, b.z, alpha);
		
		var reachedNext : boolean = index > lastIndex;
		if(reachedNext){
			moved++;
			setPosition(path[index]);
			lastIndex = index;
			Messenger.instance.send(MapObjectMovedMessage(data, path[index-1]));
		}

		yield;
		
		if(reachedNext && suspend){
		 	finalizeAt(index, path, true);
		 	return;
		}
		
		if(!paused) passedTime += Time.deltaTime;
	}
	
	finalizeAt(path.Length - 1, path, false);

}

function finalizeAt(index : int, path : Vec2i[], suspended : boolean){
	var end : Vector3 = WorldMapData.getInstance().tiles[path[index].x, path[index].y].position;
	gameObject.transform.position.x = end.x;
	gameObject.transform.position.z = end.z;
	setPosition(path[index]);
	moving = false;
	suspend = false;
	Messenger.instance.send(ActionEndedMessage());
	if(!suspended){
		moved++;
		Messenger.instance.send(MapObjectMovedMessage(data, path[index-1]));
	}
}

function CollectRessources(pos : Vec2i) {
	var worldData : WorldMapData = WorldMapData.getInstance();
	if(worldData.tiles[pos.x, pos.y].gameObjectList.Count > 0) {
		for(var gO : GameObject in worldData.tiles[pos.x, pos.y].gameObjectList) {
			if(gO.tag == "Ressource") {
				RessourceMaster.instance.ressourcesToDeregister.Add(gO);
				switch(gO.GetComponent.<Ressource>().rType) {
				case "Food":
					RessourceMaster.instance.FoodAS(gO.GetComponent.<Ressource>().rValue);
					break;
				case "Stone":
					RessourceMaster.instance.StoneAS(gO.GetComponent.<Ressource>().rValue);
					break;
				case "Wood":
					RessourceMaster.instance.WoodAS(gO.GetComponent.<Ressource>().rValue);
					break;
				case "Soul":
					RessourceMaster.instance.SoulAS(gO.GetComponent.<Ressource>().rValue);
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

function OnTriggerEnter (other : Collider){
	if(moving) finalizeAt(index, path, true);
}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
