using UnityEngine;
using UnityEngine.UI;
using System.Collections;

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
	
	// Update is called once per frame
	void Update () {
        for (int i = 0; i < cards.Length; i++)
            cards[i].guiText.text = cards[i].number + "";
	}

    public void CardAS(int cardId, int number) //AS = Add/Subtract
    {
        cards[cardId].number += number;
    }
}
