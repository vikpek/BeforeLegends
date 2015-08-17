using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityStandardAssets.ImageEffects;

public enum Anims{ //ETC ...
	NONE, IDLE, ATTACK, SPATTACK, HURT, DEATH, ENTER
}

public class CharacterAnimations : MonoBehaviour {

    public AnimationClip[] animationClips;
    Animation animation;
    int actualAnimation;

    void Start()
    {
        animation = GetComponentInChildren<Animation>();
        List<AnimationClip> animClipBuffer = new List<AnimationClip>();
        foreach(AnimationState animClip in animation)
        {
            animClipBuffer.Add(animClip.clip);
        }
        animationClips = animClipBuffer.ToArray();
    }

    public void animate(int animIndex)
    {
        print(animIndex);
        actualAnimation = animIndex;
        animation.Play(animationClips[actualAnimation].name);
        print(isAnimationPlaying());
    }

    public string isAnimationPlaying()
    {
        if (animation.isPlaying)
            return animationClips[actualAnimation].name;
        return "";
    }


    //public string idle;
    //public string attack;
    //public string hurt;
    //public string spattack;
    //public string death;
    //public string enter;

    //string current;

    //public Animation animArr;

    //void Start(){
    //    if(!animArr) animArr = gameObject.GetComponent<Animation>();
    //    swapAnimation(Anims.ENTER);
    //}

    //void Update(){
    //    if(animArr[current] && !animArr[current].enabled){
    //        swapAnimation(Anims.IDLE);
    //    }
    //}

    //public void swapAnimation(Anims a)
    //{
    //    if(a != Anims.NONE){
    //        current = lookup(a);
    //        if (lookup(a) == "" || lookup(a) == null)
    //            return;
    //        animArr.CrossFade(lookup(a), 0.5f);
    //    }
    //}

    //public bool isAnimating(Anims a) {
        
    //    return (!animArr[lookup(a)] ? false : animArr[lookup(a)].enabled);
    //}

    //string lookup(Anims a){
    //    switch(a){ // NOT unreachable. ignore warnings
    //        case Anims.IDLE :
    //            return idle;
    //        case Anims.ATTACK :
    //            return attack ;
    //        case Anims.HURT :
    //            return hurt;
    //        case Anims.SPATTACK :
    //            return spattack; 
    //        case Anims.DEATH :
    //            return death;
    //        case Anims.ENTER:
    //            return enter;
    //    }
    //    return "";
    //}
}
