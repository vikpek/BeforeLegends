using UnityEngine;
using System.Collections;

public class StartAnimation : MonoBehaviour {

    bool animateStartInitialized = false;

    // fall
    public float fallStartYPosition;
    public float fallEndYPosition;
    public float fallTime;
    float actualFallTime = 0;
    bool fall = true;
    

    // jumpoffset
    public float jumpSpeedMultiplier;
    public float jumpTimeOffset;
    public float jumpTimeOffsetAnimation;
    bool fallJumpTimeOffset = false;
    float actualJumpTimeOffset = 0;

    // jump
    public AnimationCurve jumpYPosition;
    public AnimationCurve jumpXPosition;
    public AnimationCurve jumpAnimationSpeedCurve;
    public float jumpTime;
    bool jump = false;
    float actualJumpTime = 0;
    Vector3 jumpStartPosition;

    public AnimationCurve fallScreenShake;
    public AnimationCurve jumpScreenShake;

    public float debugTime0 = 0;
    public float debugTime1 = 0;

    CharacterAnimations animator;

    public GameObject model;
    bool animateStart = true;


    public bool reset = false;
    Vector3 startPosition;
    Vector3 startPositionModel;

    bool secondScreenshake = true;

	// Use this for initialization
    void Start()
    {
        animator = GetComponent<CharacterAnimations>();
        model = GetComponentInChildren<Animation>().gameObject;
        startPosition = transform.position;
        startPositionModel = model.transform.position;
	}
	
	// Update is called once per frame
	void Update () 
    {
        //animateStart = false;
        if (Input.GetKeyDown(KeyCode.R))
            reset = true;

        if(reset)
        {
            actualFallTime = 0;
            actualJumpTime = 0;
            actualJumpTimeOffset = 0;
            fall = true;
            animateStart = true;
            jump = true;
            reset = false;
            fallJumpTimeOffset = false;
            animateStartInitialized = false;
            transform.position = startPosition;
            model.transform.position = startPositionModel;
            animator.StopAnimation();
            secondScreenshake = true;
        }

        if(Input.GetKeyDown(KeyCode.P))
        {
            animator.Animate(5);
        }

        if(animateStart)
        {

            if (fall)
            {
                if (!animateStartInitialized)
                {
                    animateStartInitialized = true;
                    animator.Animate(5);
                    animator.SetSpeed(0.0f);
                }
                actualFallTime += Time.deltaTime;
                if (actualFallTime >= fallTime)
                {
                    fall = false;
                    actualFallTime = fallTime;
                }
                transform.position = new Vector3(transform.position.x,
                                                        Mathf.Lerp(fallStartYPosition, fallEndYPosition, actualFallTime / fallTime),
                                                        transform.position.z);
                if (!fall)
                {
                    GameInfo.instance.doAScreenshake(fallScreenShake);
                    fallJumpTimeOffset = true;
                    jumpStartPosition = model.transform.position;
                    actualFallTime = 0;
                    GetComponentInChildren<ParticleSystem>().Emit(1000);
                }
            }
            else if (fallJumpTimeOffset)
            {
                actualJumpTimeOffset += Time.deltaTime;

                if (actualJumpTimeOffset > jumpTimeOffset)
                {
                    animator.SetSpeed(1.0f);
                    fallJumpTimeOffset = false;
                    actualJumpTimeOffset = 0;
                    jump = true;
                }

            }
            else if (jump)
            {
                actualJumpTime += Time.deltaTime * jumpAnimationSpeedCurve.Evaluate(actualJumpTime);

                debugTime1 = actualJumpTime;



                if (actualJumpTime >= jumpTime)
                {
                    jump = false;
                    actualJumpTime = jumpTime;
                }

                if (model.transform.localPosition.y < 0.1f && secondScreenshake)
                {
                    secondScreenshake = false;
                    GameInfo.instance.doAScreenshake(jumpScreenShake);
                    GetComponentInChildren<ParticleSystem>().Emit(400);
                }
                
                animator.SetSpeed(jumpAnimationSpeedCurve.Evaluate(actualJumpTime));

                model.transform.position = new Vector3(jumpStartPosition.x + jumpXPosition.Evaluate(actualJumpTime),
                                                                                jumpStartPosition.y + jumpYPosition.Evaluate(actualJumpTime),
                                                                                model.transform.position.z);

                if (!jump)
                {
                    animateStart = false;
                    fall = true;
                    actualJumpTime = 0;
                }
            }
        }
    }
	
}
