using UnityEngine;
using System.Collections;

public class SuperScreen : MonoBehaviour {
	void OnMouseDown() {
		Application.CaptureScreenshot("Screenshot.png");
	}
}


