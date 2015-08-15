using UnityEngine;
using UnityEngine.UI;
using System.Collections;




[System.Serializable]
public class OfferSlot
{
    public int id;
    public int offerCardId;
    public Text costWood;
    public Text costStone;
    public Text costFood;
    public Text costSoul;
    public Image offerCardImage;
    public Button offerBuyButton;
}

public class Shop : MonoBehaviour {

    public CardManager cm;
    public OfferSlot[] offerSlots;
    public ResourceManager rm;
    public Image previewImage;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void Initialize()
    {
        if (offerSlots.Length != 0)
        {
            int i = 0;
            foreach (OfferSlot offer in offerSlots)
            {
                offer.id = i;
                if (i == 0)
                    NewRandomOffer(i, new int[] { 0, 1 });
                else
                    NewRandomOffer(i, new int[] { 2, 3, 4 });
                i++;
            }
        }
    }

    public void BuyCard(int offerSlotId)
    {
        int aCardId = offerSlots[offerSlotId].offerCardId;
        if (EnoughResources(aCardId))
        {
            cm.CardAS(aCardId, 1);
            if (offerSlotId == 0)
                NewRandomOffer(offerSlotId, new int[] { 0, 1 });
            else
                NewRandomOffer(offerSlotId, new int[] { 2, 3, 4 });
            rm.ResourceAS("Wood", -cm.cards[aCardId].costWood);
            rm.ResourceAS("Stone", -cm.cards[aCardId].costStone);
            rm.ResourceAS("Food", -cm.cards[aCardId].costFood);
            rm.ResourceAS("Soul", -cm.cards[aCardId].costSoul);
        }
    }

    bool EnoughResources(int cardId)
    {
        int enoughResources = 0;
        foreach(LResource lr in rm.resources)
        {
            if (lr.name == "Wood")
                if (lr.number >= cm.cards[cardId].costWood)
                    enoughResources++;
            if (lr.name == "Stone")
                if (lr.number >= cm.cards[cardId].costStone)
                    enoughResources++;
            if (lr.name == "Food")
                if (lr.number >= cm.cards[cardId].costFood)
                    enoughResources++;
            if (lr.name == "Soul")
                if (lr.number >= cm.cards[cardId].costSoul)
                    enoughResources++;
        }
        if (enoughResources == 4)
            return true;
        else
            return false;
    }

    void NewRandomOffer(int offerId, int[] possibleCards)
    {
        int nextCard = 0;

        if (possibleCards.Length == 0)
        {
            print("Can't find offer - all exclusive, return!");
            return;
        }


        nextCard = Random.Range(0, possibleCards.Length);

        offerSlots[offerId].offerCardImage.sprite = cm.cards[possibleCards[nextCard]].cardImage.sprite;
        offerSlots[offerId].costFood.text = cm.cards[possibleCards[nextCard]].costFood + "";
        offerSlots[offerId].costSoul.text = cm.cards[possibleCards[nextCard]].costSoul + "";
        offerSlots[offerId].costStone.text = cm.cards[possibleCards[nextCard]].costStone + "";
        offerSlots[offerId].costWood.text = cm.cards[possibleCards[nextCard]].costWood + "";
        offerSlots[offerId].offerCardId = cm.cards[possibleCards[nextCard]].id;
    }

    public void Preview(GameObject preview) {
        previewImage.sprite = preview.GetComponent<Image>().sprite;
    }
}
