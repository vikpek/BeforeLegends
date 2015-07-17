using UnityEngine;
using System.Collections;

public class Message{
	public string type;
    public void super(string type)
    {
        this.type = type;
    }
}

public class ActionEndedMessage : Message
{

    public ActionEndedMessage(string type)
    {
        super("ActionEnded");
	}
}

public class AllActionsEndedMessage : Message
{

	public AllActionsEndedMessage(){
		super("AllActionsEnded");
	}
}

public class TurnEndedMessage : Message{
	public int turn;
	public TurnEndedMessage(int turnI)
    {
		super("TurnEnded");
		GameObject[] pO = GameObject.FindGameObjectsWithTag("Player");
		foreach(GameObject gO in pO) {
            ResourceManager.instance.ResourceAS("Food", -gO.GetComponent<Starvation>().eat);
            if (ResourceManager.instance.GetR("Food") <= 0)
            {
                ResourceManager.instance.LoseHealthToHunger();
			}
            else if (ResourceManager.instance.GetR("Food") > 0)
            {
                ResourceManager.instance.RegenerateHealthThroughEating();
			}
		}

        foreach (GameObject r in ResourceManager.instance.ressourcesToDeregister)
        {

            if(r.GetComponent<Ressource>().cooldown != 0) {
                r.GetComponent<Ressource>().cooldown--;
                if(r.GetComponent<Ressource>().cooldown == 0) {
                    r.GetComponent<Ressource>().Respawn();
                }
            }
        }
        foreach (GameObject r in ResourceManager.instance.toDelete)
        {
            ResourceManager.instance.ressourcesToDeregister.Remove(r);
        }
        //Ugly fix to update the UnitInfo popup when the round ends
        UnitInfo.Instance.DisplayUnitInfo(UnitInfo.Instance.currentActive);
        UnitInfo.Instance.DisplayUnitInfo(UnitInfo.Instance.currentActive);
		this.turn = turnI;
	}
}

public class TurnBeganMessage : Message{
    public int turn;
	public TurnBeganMessage(int turn){
		super("TurnBegan");
		this.turn = turn;
	}
}

public class MapObjectMovedMessage : Message{
	public MapObjectData objData;
    public Vec2int lastTile;
	
	public MapObjectMovedMessage(MapObjectData objData, Vec2int lastTile){
		super("MapObjectMoved");
		this.objData = objData;
		this.lastTile = lastTile;
	}
}

public class MouseTileChangedMessage : Message{
	public Vec2int tile;
	public Vector3 tilePos;
	public Vector3 worldPos;
	
	public MouseTileChangedMessage(Vec2int tile, Vector3 tilePos, Vector3 worldPos){
		super("MouseTileChanged");
		this.tile = tile;
		this.tilePos = tilePos;
		this.worldPos = worldPos;
	}
}

public class ActionStartedMessage : Message{

	public ActionStartedMessage(){
		super("ActionStarted");
	}
}