using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections.Generic;

public class ButtonTreeController : MonoBehaviour, IPointerClickHandler {

	bool currentState = false;

	List<Button> secondOrderButtons = new List<Button>();
	
	// Use this for initialization
	void Start () {		
		foreach(Button child in GetComponentsInChildren<Button>())
		{
			if(child.tag == Tags.BUTTON_SECOND_ORDER)
			{
				secondOrderButtons.Add(child);
				child.gameObject.SetActive( false );
			}
		}
	}

	public void OnPointerClick (PointerEventData eventData)
	{
		setSecondOrderButtonsTo (!currentState);
	}

	void setSecondOrderButtonsTo (bool state)
	{
		currentState = state;
		foreach (Button b in secondOrderButtons) {
			b.gameObject.SetActive (state);
		}
	}
}
