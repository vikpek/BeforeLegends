using UnityEngine;
using System.Collections;

public class Ressource : MonoBehaviour {

    public string rType;
    public int rValue;
    public Vec2int pos;

    public int cooldown;
    private int orgCooldown;

    public float fallSpeed; 
    public bool fall = false;

	private bool playedClick = false;

    void Start() {
        orgCooldown = cooldown;
    }

    void Update() {
	    if(gameObject.transform.position.y > 0 && fall == true) {
			gameObject.transform.position = new Vector3(gameObject.transform.position.x, gameObject.transform.position.y - fallSpeed, gameObject.transform.position.z);

	    }
		if(gameObject.transform.position.y == 0 && fall == true && playedClick == false) {
			AudioMaster.instance.boardgamePieceClickA038Play();
			playedClick = true;
		}
    }

    public void Respawn()
    {
        fall = false;
        Vector3 newPos = new Vector3(transform.position.x, 10, transform.position.z);
        gameObject.transform.position = newPos;
        FogOfWar.instance.SetLayerRecursively(gameObject, 11);

        ResourceManager.instance.toDelete.Add(gameObject);
        gameObject.SetActive(true);
        cooldown = orgCooldown;
    }
}
