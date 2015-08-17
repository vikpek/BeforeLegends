using UnityEngine;
using System.Collections;

public class Tests : MonoBehaviour {

    Animation anim;

	// Use this for initialization
	void Start () {
        anim = GetComponentInChildren<Animation>();

	}

    int i = 0;

	// Update is called once per frame
	void Update () {
            anim[anim.clip.name].speed = 0;
	}

    void OnCollisionEnter(Collision col)
    {
        print("aha!");
        anim[anim.clip.name].speed = 1;
    }
}
