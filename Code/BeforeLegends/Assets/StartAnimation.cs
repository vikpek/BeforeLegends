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
    public float jumpTimeOffsetAnimation; //re-fucking-name it !!!!
    float actualJumpTimeOffset = 0;

    bool jump = false;
    Vector3 jumpStartPosition;
    public AnimationCurve jumpYPosition;
    public AnimationCurve jumpXPosition;
    public float jumpTime;
    float actualJumpTime = 0;

    Animation enemyModelAnimation;
    bool animateStart = false;


	// Use this for initialization
    void Start()
    {
        enemyModelAnimation = GetComponentInChildren<Animation>();
	}
	
	// Update is called once per frame
	void Update () 
    {
        if(animateStart)
        {

            if (fall)
            {
                if (!animateStartInitialized)
                {
                    animateStartInitialized = true;
                    enemyModelAnimation.Play("Rig.001|Enter_01");
                    //enemyModelAnimation["Rig.001|Enter_01"].speed = 0;
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
                    //GameInfo.instance.doAScreenshake(null);
                }
            }
            else if (fallJumpTimeOffset)
            {
                actualJumpTimeOffset += Time.deltaTime;
                if (actualJumpTimeOffset > jumpTimeOffset - jumpTimeOffsetAnimation)
                {
                    enemyModelAnimation["Rig.001|Enter_01"].speed = 1;
                }
                if (actualJumpTimeOffset > jumpTimeOffset)
                {
                    actualJumpTimeOffset = 0;
                    fallJumpTimeOffset = false;
                    jump = true;
                }
            }
            else if (jump)
            {

                actualJumpTime += Time.deltaTime;
                if (actualJumpTime >= jumpTime)
                {
                    jump = false;
                    actualJumpTime = jumpTime;
                }

                enemyModelAnimation.gameObject.transform.position = new Vector3(jumpStartPosition.x + jumpXPosition.Evaluate(actualJumpTime / jumpTime),
                                                        jumpStartPosition.y + jumpYPosition.Evaluate(actualJumpTime / jumpTime),
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
