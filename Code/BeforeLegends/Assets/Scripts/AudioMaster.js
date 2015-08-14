//#pragma strict

//var audioSource : AudioSource;

//var audioObjects : List.<AudioObject> = List.<AudioObject>();

//function Awake() {
//	if(!instance) instance = this;
//	audioSource = gameObject.GetComponent.<AudioSource>();
//}

//function FetchAudioObject(objName : String) {
//	for(var o : AudioObject in audioObjects) {
//		if(o.objectName == objName)
//			return o;
//	}
//	return null;
//}


//public class AudioObject {
//	var objectName : String;

//	var attack : AudioClip;
//	var walk : AudioClip;
//	var die : AudioClip;
//	var spattack: AudioClip; 
//}

//function Update() {
//	if(Input.GetKeyDown(KeyCode.D))
//		AudioMaster.instance.audioSource.PlayOneShot(audioObjects[0].attack);
//}