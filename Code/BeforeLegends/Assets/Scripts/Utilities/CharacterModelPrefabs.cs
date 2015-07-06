using UnityEngine;
using System.Collections;

public class CharacterModelPrefabs : MonoBehaviour {

    public static GameObject[] prefabs;

    public GameObject[] prefabs_editor;

    public static GameObject[] battlePrefabs;

    public GameObject[] battlePrefabs_editor;

    public static GameObject[] ressourcePrefabs;

    public GameObject[] ressourcePrefabs_editor;

    void Awake(){
	    prefabs = prefabs_editor;
	    battlePrefabs = battlePrefabs_editor;
	    ressourcePrefabs = ressourcePrefabs_editor;
    }
}
