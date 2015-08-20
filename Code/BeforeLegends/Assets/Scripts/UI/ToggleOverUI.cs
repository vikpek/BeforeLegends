using UnityEngine;
using System.Collections;

public class ToggleOverUI : MonoBehaviour {

    void Start() {
    }

    void OnMouseDown() {
        if(name.Contains("Player"))
            UnitInfo.Instance.DisplayUnitInfo(gameObject.transform.parent.gameObject);
        else
            UnitInfo.Instance.DisplayUnitInfo(gameObject.transform.parent.parent.gameObject);
    }

    void OnMouseEnter() {
        MoveOnClick.instance.SetMouseOverUIElement(true);
    }
    void OnMouseExit() {
        MoveOnClick.instance.SetMouseOverUIElement(false);
    }
}
