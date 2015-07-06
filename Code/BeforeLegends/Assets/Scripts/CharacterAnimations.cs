using UnityEngine;
using System.Collections;

public enum Anims{ //ETC ...
	NONE, IDLE, ATTACK, SPATTACK, HURT
}

public class CharacterAnimations : MonoBehaviour {

    public string idle;
    public string attack;
    public string hurt;
    public string spattack;


    public string current;

    Animation animArr;

    void Start(){
	    if(!animArr) animArr = gameObject.GetComponent<Animation>();
	    swapAnimation(Anims.IDLE);
    }

    void Update(){
	    if(animArr[current] && !animArr[current].enabled){
		    swapAnimation(Anims.IDLE);
	    }
    }

    public void swapAnimation(Anims a)
    {
	    if(a != Anims.NONE){
		    current = lookup(a);
		    animArr.CrossFade(lookup(a), 0.5f);
	    }
    }

    public bool isAnimating(Anims a){
	    return (!animArr[lookup(a)] ? false : animArr[lookup(a)].enabled);
    }

    string lookup(Anims a){
	    switch(a){ // NOT unreachable. ignore warnings
		    case Anims.IDLE :
			    return idle;
		    case Anims.ATTACK :
			    return attack ;
		    case Anims.HURT :
			    return hurt;
		    case Anims.SPATTACK :
			    return spattack; 
	    }
	    return "";
    }
}
