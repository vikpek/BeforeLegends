using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections.Generic;

public class ButtonTreeController : MonoBehaviour, IPointerDownHandler, IPointerUpHandler {
	
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
	
	public void OnPointerDown(PointerEventData data)
	{
		setSecondOrderButtonsTo (true);
	}

	public void OnPointerUp(PointerEventData eventData)

	{
		setSecondOrderButtonsTo (false);
	}

	void setSecondOrderButtonsTo (bool state)
	{
		foreach (Button b in secondOrderButtons) {
			b.gameObject.SetActive (state);
		}
	}
}
