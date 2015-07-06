using UnityEngine;
using System.Collections;

public class GameInfo : MonoBehaviour {

    private static GameInfo _instance;

    public static GameInfo instance
    {
        get
        {
            //If _instance hasn't been set yet, we grab it from the scene!
            //This will only happen the first time this reference is used.
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<GameInfo>();
            return _instance;
        }
    }

    public bool battleCameraPosAssigned = false;
    public Vector3 battleCameraPos;

    void assignBattleCameraPos(GameObject camera)
    {
        if(!battleCameraPosAssigned)                    // I know that line is a bit pointless
            battleCameraPos = camera.transform.position;
        battleCameraPosAssigned = true;
    }
}
