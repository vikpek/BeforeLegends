using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngineInternal;

[System.Serializable]
public class Card 
{
    public string name;
    public int id;
    public int number;
    public int costWood;
    public int costStone;
    public int costFood;
    public int costSoul;
    public Text guiText;
    public Image cardImage;
}

public class CardManager : MonoBehaviour {

    public static CardManager Instance { get; private set; }

    public Shop shop;
    public Card[] cards;
	// Use this for initialization
	void Start () {
        if (cards.Length != 0)
        {
            int i = 0;
            foreach (Card aCard in cards)
            {
                aCard.id = i;
                i++;
            }
        }
        shop.Initialize();
	}

    void Awake() {
        Instance = this;
    }
	
	// Update is called once per frame
	void Update () {
        for (int i = 0; i < cards.Length; i++)
            cards[i].guiText.text = cards[i].number + "";
	}

    public void CardAS(int cardId, int number) //AS = Add/Subtract
    {
        cards[cardId].number += number;
    }

    public Card GetCard(string name) {
        foreach (var card in cards) {
            if (card.name == name)
                return card;
        }
        return null;
    }
}
