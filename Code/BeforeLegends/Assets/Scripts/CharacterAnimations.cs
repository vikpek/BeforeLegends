using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityStandardAssets.ImageEffects;

public enum Anims{ //ETC ...
	NONE, IDLE, ATTACK, SPATTACK, HURT, DEATH, ENTER
}

public class CharacterAnimations : MonoBehaviour {

    public AnimationClip[] animationClips;
    Animation animation;
    int actualAnimation;

    public Image shieldImage;
    public RectTransform shieldTransform;
    float shieldAnimationDuration;
    float shieldFadeoutDuration;
    public AnimationCurve shieldSizeColorOverTime;
    public AnimationCurve shieldFadeoutOverTime;
    float actualSieldAnimationTime = 0;
    float actualSieldFadeoutTime = 0;
    bool shieldAnimationFinished = false;
    bool shieldFadeoutFinished = false;

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
        actualAnimation = animIndex;
        animation.Play(animationClips[actualAnimation].name);
    }

    public void animate(int animIndex, float delay)
    {
        actualAnimation = animIndex;
        StartCoroutine(delayAnimation(delay));
    }
    public void stopAnimation()
    {
        animation.Stop();
    }

    public string isAnimationPlaying()
    {
        //!!!test if Particles are running!!!
        if (animation.isPlaying)
            return animationClips[actualAnimation].name;
        return "";
    }

    IEnumerator delayAnimation(float delay)
    {
        yield return new WaitForSeconds(delay);
        animation.Play(animationClips[actualAnimation].name);
    }

    public void StartShieldAnimation()
    {
        actualSieldAnimationTime = 0;
        shieldAnimationFinished = false;
        actualSieldFadeoutTime = 0;
        shieldFadeoutFinished = false;
        shieldAnimationDuration = shieldSizeColorOverTime.keys[shieldSizeColorOverTime.keys.Length - 1].time;
        shieldFadeoutDuration = shieldFadeoutOverTime.keys[shieldFadeoutOverTime.keys.Length - 1].time;
        StartCoroutine(ShieldAnimation());
    }

    IEnumerator ShieldAnimation()
    {
        while (!shieldAnimationFinished)
        {
            actualSieldAnimationTime += Time.deltaTime;
            shieldTransform.localScale = Vector3.one * shieldSizeColorOverTime.Evaluate(actualSieldAnimationTime / shieldAnimationDuration);
            shieldImage.color = new Color(1, 1, 1, shieldSizeColorOverTime.Evaluate(actualSieldAnimationTime / shieldAnimationDuration));
            if(actualSieldAnimationTime >= shieldAnimationDuration)
            {
                shieldAnimationFinished = true;
                GameInfo.instance.doAScreenshake(null);
            }
            yield return new WaitForEndOfFrame();
        }
        while(!shieldFadeoutFinished)
        {
            actualSieldFadeoutTime += Time.deltaTime;
            shieldImage.color = new Color(1, 1, 1, shieldFadeoutOverTime.Evaluate(actualSieldFadeoutTime / shieldFadeoutDuration));

            if (actualSieldFadeoutTime >= shieldFadeoutDuration)
                shieldFadeoutFinished = true;
            
            yield return new WaitForEndOfFrame();
        }

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
