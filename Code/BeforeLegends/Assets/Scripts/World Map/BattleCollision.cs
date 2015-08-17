using UnityEngine;
using System.Collections;

public class BattleCollision : MonoBehaviour {

    MapObjectCarrier olafMoc;
    MapObjectCarrier enemyMoc;
    GameObject enemy;
    public GameObject world;

    void Update()
    {
        if(olafMoc == null)
            olafMoc = GetComponent<MapObjectCarrier>();
        if(WorldMapGenerator.instance.generationComplete)
        {
            foreach(GameObject go in WorldMapData.instance.tiles[olafMoc.pos.x, olafMoc.pos.y].gameObjectList)
            {
                if(go.tag == "EnemyParent")
                {
                    TurnManager.instance.nextEnemyDoTurn = false;
                    enemyMoc = go.GetComponentInChildren<MapObjectCarrier>();
                    enemy = go.transform.GetChild(0).gameObject;
                    WorldMapData.instance.tiles[enemyMoc.pos.x, enemyMoc.pos.y].mapObjects.Remove(enemyMoc.data);
                    WorldMapData.instance.tiles[enemyMoc.pos.x, enemyMoc.pos.y].gameObjectList.Remove(go);
                    GameStateManager.instance.startBattle(gameObject, enemyMoc.gameObject);
                    break;
                }
            }
        }
    }
}
