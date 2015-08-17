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

    Animation enemyModelAnimation;
    bool animateStart = true;

    SkinnedMeshRenderer shittyskinnedMeshrenderer;
    Mesh s1;
    public Animation test;

    public bool reset = false;
    Vector3 startPosition;
    Vector3 startPositionChild;

	// Use this for initialization
    void Start()
    {
        enemyModelAnimation = GetComponentInChildren<Animation>();
        enemyModelAnimation.AddClip(test.clip, "Enter");
        startPosition = transform.position;
        startPositionChild = enemyModelAnimation.transform.gameObject.transform.position;
	}
	
	// Update is called once per frame
	void Update () 
    {
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
                    fallJumpTimeOffset = true;
                    jumpStartPosition = enemyModelAnimation.gameObject.transform.position;
                    actualFallTime = 0;
                    GameInfo.instance.doAScreenshake(null);
                }
            }
            else if (fallJumpTimeOffset)
            {
                actualJumpTimeOffset += Time.deltaTime;

                if (actualJumpTimeOffset > jumpTimeOffset)
                {
                    enemyModelAnimation["Enter"].speed = 1;
                    fallJumpTimeOffset = false;
                    actualJumpTimeOffset = 0;
                    jump = true;
                    GetComponentInChildren<ParticleSystem>().Emit(1000);
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
