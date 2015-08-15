using UnityEngine;
using System.Collections;

public class CombatText : MonoBehaviour {

    public float fadeOutTime;
    public float offset;
        
    [HideInInspector]
    public bool dmgTimer;
    private Color orgColor;
    private Color newColor;
    private Vector3 orgPosition;
    private Vector3 newPosition;
    private TextMesh text;
    private float temp;

	// Use this for initialization
	void Start () {
        text = this.GetComponent<TextMesh>();
        text.color = new Color(0, 0, 0, 0);
        orgColor = text.color;
        orgPosition = this.transform.position;
        newPosition = orgPosition;
        dmgTimer = false;
        Time.timeScale = 1.0F;
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKey(KeyCode.K)) {
            DisplayDamage(29);
        }
        if (dmgTimer) {
            newColor = new Color(1, 1, 1, newColor.a - 0.1F * (fadeOutTime * Time.deltaTime));
            this.GetComponent<TextMesh>().color = newColor;

            newPosition = new Vector3(orgPosition.x, newPosition.y +  0.1F * (offset/fadeOutTime), orgPosition.z);
            this.transform.position = newPosition;
        }
        if (newColor.a <= 0) {
            dmgTimer = false;
            newPosition = orgPosition;
        }
	}

    public void DisplayDamage(float dmg) {
        dmgTimer = true;
        text.text = dmg.ToString();
        text.color = new Color(1, 1, 1, 1);
        newColor = new Color(1, 1, 1, 1);
    }
}
