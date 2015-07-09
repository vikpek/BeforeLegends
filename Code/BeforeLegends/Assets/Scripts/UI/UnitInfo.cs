using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UnitInfo : MonoBehaviour {

    public GameObject unitInfo;
    public Text attack;
    public Text defense;
    public Text damage;
    public Text armor;
    MoveOnClick mouse;

	// Use this for initialization
	void Start () {
        mouse = GameObject.Find("Olaf").GetComponent<MoveOnClick>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnMouseDown() {
        BattleParameters info = transform.parent.gameObject.GetComponent<BattleParameters>();
        attack.text = "Attack: " + info.battleParameters.attack;
        defense.text = "Defense: " + info.battleParameters.defense;
        damage.text = "Damage: " + info.battleParameters.damage;
        armor.text = "Armor: " + info.battleParameters.armor;

        unitInfo.SetActive(!unitInfo.active);
    }

    void OnMouseEnter() {
        mouse.SetMouseOverUIElement(true);
    }
    void OnMouseExit() {
        mouse.SetMouseOverUIElement(false);
    }
}

