using UnityEngine;
using System.Collections;

public class CameraTransitions : MonoBehaviour
{

    public static CameraTransitions Instance { get; private set; }

    public float transitionDuration = 2.5f;
    public Vector3 startingPos;
    public Vector3 targetPos;
    public float t;

    // Use this for initialization
    void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
        }
        Instance = this;
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void LerpCamera(Transform target)
    {
        StartCoroutine(LerpToPosition(transitionDuration, target.position));
    }

    IEnumerator LerpToPosition(float lerpSpeed, Vector3 newPosition)
    {
        targetPos = newPosition;
        t = 0.0f;
        startingPos = transform.position;
        newPosition = new Vector3(newPosition.x, startingPos.y, newPosition.z - startingPos.y);
        while (t < 1.0f)
        {
            t += Time.deltaTime * (Time.timeScale / lerpSpeed);

            transform.position = Vector3.Lerp(startingPos, newPosition, t);
            yield return 0;
        }
    }
}
