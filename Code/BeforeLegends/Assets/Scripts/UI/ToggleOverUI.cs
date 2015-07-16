using UnityEngine;
using System.Collections;

public class ToggleOverUI : MonoBehaviour {
    MoveOnClick mouse;

    void Start() {
        mouse = GameObject.Find("Olaf").GetComponent<MoveOnClick>();
    }

    void OnMouseDown() {
        print(UnitInfo.Instance);
        UnitInfo.Instance.DisplayUnitInfo(transform.parent.gameObject);
    }

    void OnMouseEnter() {
        mouse.SetMouseOverUIElement(true);
    }
    void OnMouseExit() {
        mouse.SetMouseOverUIElement(false);
    }
}
