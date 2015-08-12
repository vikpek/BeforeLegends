using UnityEngine;
using System.Collections;

public class BattleCollision : MonoBehaviour {

    void OnTriggerEnter (Collider other){
        if (other.tag == "Enemy")
        {
            MapObjectCarrier moc = other.gameObject.GetComponent<MapObjectCarrier>();
            WorldMapData.instance.tiles[moc.pos.x, moc.pos.y].gameObjectList.Remove(other.gameObject.transform.parent.gameObject);
            WorldMapData.instance.tiles[moc.data.pos.x, moc.data.pos.y].mapObjects.Remove(moc.data);
            other.gameObject.SetActive(false);
            TurnManager.instance.nextEnemyDoTurn = true;
        }
            //GameStateManager.instance.startBattle(gameObject, other.gameObject.GetComponentInChildren<MapObjectCarrier>().gameObject);
    }
}
