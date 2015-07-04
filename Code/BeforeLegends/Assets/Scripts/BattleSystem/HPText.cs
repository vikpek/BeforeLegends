using UnityEngine;
using System.Collections;

public class HPText
{

    TextMesh tm;

    void setVal(float v){
	    int hp = (int)Mathf.Round(v);
	    if(hp < 0) hp = 0;
	    tm.text = "" + hp;
    }
}
