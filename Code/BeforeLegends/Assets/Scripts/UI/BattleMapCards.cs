using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class BattleMapCards : MonoBehaviour {


    private static BattleMapCards _instance;

    public static BattleMapCards instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<BattleMapCards>();
            return _instance;
        }
    }

    [System.Serializable]
    public class BMCards {
        public string name;
        public RawImage cardSlot;
        public Texture cardIsActive;
        public Texture cardIsInactive;
    }

    public BMCards[] cards;

    public bool battleDeactivated = false;

    public EventTrigger attackCardEventTrigger;

	// Use this for initialization
	void Start () {
	
	}

    public void DeactivateAllCards()
    {
        foreach (var card in cards)
        {
            Card tmp = CardManager.Instance.GetCard(card.name);
            card.cardSlot.gameObject.GetComponent<EventTrigger>().enabled = false;
            card.cardSlot.gameObject.GetComponent<UIFunctions>().SlideOut();
            battleDeactivated = true;
        }
        attackCardEventTrigger.enabled = false;
    }

    public void ActivateAllCards()
    {
        foreach (var card in cards)
        {
            Card tmp = CardManager.Instance.GetCard(card.name);
            card.cardSlot.gameObject.GetComponent<EventTrigger>().enabled = true;
            battleDeactivated = false;
        }
        attackCardEventTrigger.enabled = true;
    }

	// Update is called once per frame
	void Update () {
        if (battleDeactivated)
            return;
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
