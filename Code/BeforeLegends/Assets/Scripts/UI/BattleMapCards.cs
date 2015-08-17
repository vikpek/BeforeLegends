using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class BattleMapCards : MonoBehaviour {

    [System.Serializable]
    public class BMCards {
        public string name;
        public RawImage cardSlot;
        public Texture cardIsActive;
        public Texture cardIsInactive;
    }

    public BMCards[] cards;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        foreach (var card in cards) {
            Card tmp = CardManager.Instance.GetCard(card.name);
            if (tmp.number <= 0) {
                card.cardSlot.texture = card.cardIsInactive;
                card.cardSlot.gameObject.GetComponent<EventTrigger>().enabled = false;
                card.cardSlot.gameObject.GetComponent<UIFunctions>().SlideOut();
            }
            else {
                card.cardSlot.texture = card.cardIsActive;
                card.cardSlot.gameObject.GetComponent<EventTrigger>().enabled = true;
            }
        }
	}
}
