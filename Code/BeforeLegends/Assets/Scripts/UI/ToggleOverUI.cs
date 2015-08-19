using UnityEngine;
using System.Collections;

public class ToggleOverUI : MonoBehaviour {
    MoveOnClick mouse;

    void Start() {
        mouse = GameObject.Find("Olaf").GetComponent<MoveOnClick>();
    }

    void OnMouseDown() {
        UnitInfo.Instance.DisplayUnitInfo(transform.parent.gameObject.transform.parent.gameObject);
    }

    void OnMouseEnter() {
        mouse.SetMouseOverUIElement(true);
    }
    void OnMouseExit() {
        mouse.SetMouseOverUIElement(false);
    }
}
