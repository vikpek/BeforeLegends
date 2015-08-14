using UnityEngine;
using System.Collections;

public class InterfaceData : MonoBehaviour
{
    private static InterfaceData _instance;

    public static InterfaceData instance
    {
        get
        {
            if (_instance == null)
                _instance = GameObject.FindObjectOfType<InterfaceData>();
            return _instance;
        }
    }

    public MapObjectCarrier selectedCarrier;
}
