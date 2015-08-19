﻿using UnityEngine;
using System.Collections;

public class Tutorial : MonoBehaviour {

    int clicks = 0;
    public int clicksToDismiss;
	// Use this for initialization
	void Start () {
        MoveOnClick.instance.SetMouseOverUIElement(true);
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButtonDown(0))
            clicks++;

        if (clicks >= clicksToDismiss)
        {
            gameObject.SetActive(false);
            MoveOnClick.instance.SetMouseOverUIElement(false);
        }
	}
}
