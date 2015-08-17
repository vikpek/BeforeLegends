using UnityEngine;
using System.Collections;

public class StartAnimation : MonoBehaviour {

    bool animateStartInitialized = false;

    bool fall = true;
    public float fallStartYPosition;
    public float fallEndYPosition;
    public float fallTime;
    float actualFallTime = 0;

    bool fallJumpTimeOffset = false;
    public float jumpTimeOffset;
    public float jumpTimeOffsetAnimation;
    float actualJumpTimeOffset = 0;

    bool jump = false;
    Vector3 jumpStartPosition;
    public AnimationCurve jumpYPosition;
    public AnimationCurve jumpXPosition;
    public AnimationCurve jumpAnimationSpeedCurve;
    public float jumpTime;
    float actualJumpTime = 0;

    public float debugTime0 = 0;
    public float debugTime1 = 0;

    public float jumpSpeedMultiplier;

    public Animation enemyModelAnimation;
    bool animateStart = true;

    public Animation enterAnimation;

    public bool reset = false;
    Vector3 startPosition;
    Vector3 startPositionChild;

    bool secondScreenshake = true;

	// Use this for initialization
    void Start()
    {
        enemyModelAnimation = GetComponentInChildren<Animation>();
        //enemyModelAnimation.AddClip(enterAnimation.clip, "Enter");
        startPosition = transform.position;
        //startPositionChild = enemyModelAnimation.transform.gameObject.transform.position;
	}
	
	// Update is called once per frame
	void Update () 
    {
        animateStart = false;
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
            enemyModelAnimation.transform.gameObject.transform.position = startPositionChild;
            enemyModelAnimation.Stop();
            secondScreenshake = true;
        }

        if(animateStart)
        {

            if (fall)
            {
                if (!animateStartInitialized)
                {
                    animateStartInitialized = true;
                    enemyModelAnimation.Play("Enter");
                    enemyModelAnimation["Enter"].speed = 0;
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
                    GameInfo.instance.doAScreenshake(null);
                    fallJumpTimeOffset = true;
                    jumpStartPosition = enemyModelAnimation.gameObject.transform.position;
                    actualFallTime = 0;
                    GetComponentInChildren<ParticleSystem>().Emit(1000);
                }
            }
            else if (fallJumpTimeOffset)
            {
                actualJumpTimeOffset += Time.deltaTime * jumpAnimationSpeedCurve.Evaluate(actualJumpTime);

                if (actualJumpTimeOffset > jumpTimeOffset)
                {
                    enemyModelAnimation["Enter"].speed = 1;
                    fallJumpTimeOffset = false;
                    actualJumpTimeOffset = 0;
                    jump = true;
                }

            }
            else if (jump)
            {
                actualJumpTime += Time.deltaTime;

                debugTime1 = actualJumpTime;



                if (actualJumpTime >= jumpTime)
                {
                    jump = false;
                    actualJumpTime = jumpTime;
                }

                if (enemyModelAnimation.gameObject.transform.localPosition.y < 0.1f && secondScreenshake)
                {
                    secondScreenshake = false;
                    GameInfo.instance.doAScreenshake(null);
                    GetComponentInChildren<ParticleSystem>().Emit(400);
                }

                print("jumpStartPosition.y + jumpYPosition.Evaluate(actualJumpTime): " + jumpStartPosition.y + jumpYPosition.Evaluate(actualJumpTime));

                enemyModelAnimation["Enter"].speed = jumpAnimationSpeedCurve.Evaluate(actualJumpTime);

                enemyModelAnimation.gameObject.transform.position = new Vector3(jumpStartPosition.x + jumpXPosition.Evaluate(actualJumpTime),
                                                                                jumpStartPosition.y + jumpYPosition.Evaluate(actualJumpTime),
                                                                                enemyModelAnimation.gameObject.transform.position.z);

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
