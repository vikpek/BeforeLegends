using UnityEngine;
using System.Collections;

public class ToggleOverUI : MonoBehaviour {

    void Start() {
    }

    void OnMouseDown() {
        UnitInfo.Instance.DisplayUnitInfo(BattleParameters.instance.gameObject);
    }

    void OnMouseEnter() {
        MoveOnClick.instance.SetMouseOverUIElement(true);
    }
    void OnMouseExit() {
        MoveOnClick.instance.SetMouseOverUIElement(false);
    }
}
