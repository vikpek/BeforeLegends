#pragma strict

static var instance: Screenshake;

var duration: float;
var intensity: float;
var camerastart: Transform; 

function Awake (){
	if (!instance) instance = this;
}

function ScreenShake (dur : float, intensity : float, intensityDuration : float){
	/*camerastart = gameObject.transform; 
	var temp : Vector3 = gameObject.transform.position;
	
	/*var temp : Vector3;
	temp = new Vector3(camerastart.position.x + Random.Range(-1, +1),
	camerastart.position.y + Random.Range(-1, +1),
	camerastart.position.z + Random.Range(-1, +1));
	gameObject.transform.position = temp;
	while(duration > 0) {
		gameObject.transform.position.x = camerastart.position.x + Random.Range(-1, 1);
		gameObject.transform.position.y = camerastart.position.y + Random.Range(-1, 1);
		gameObject.transform.position.z = camerastart.position.z + Random.Range(-1, 1);
		duration -= Time.deltaTime;
		gameObject.transform.position = temp;
	}	
	gameObject.transform.position = temp;
	Debug.Log("Position" + camerastart.position);*/
	var pos : Vector3 = transform.position;
	var currPos : Vector3;
	var subDur : float = 0;
	var timePassed : float;
	var durPassed : float;
	var displacement : Vector3 = Vector3.zero;
	while(timePassed < dur){
		if(durPassed >= subDur){
			durPassed = 0;
			currPos = transform.position;
			subDur = Random.Range(0f, intensityDuration);
			displacement.x = Random.Range(-intensity, intensity);
			displacement.y = Random.Range(-intensity, intensity);
			displacement.z = Random.Range(-intensity, intensity);
		}
		
		var alpha : float = durPassed / subDur;
		
		transform.position.x = Mathf.Lerp(currPos.x, pos.x + displacement.x, alpha);
		transform.position.y = Mathf.Lerp(currPos.y, pos.y + displacement.y, alpha);
		transform.position.z = Mathf.Lerp(currPos.z, pos.z + displacement.z, alpha);
	
		yield;
		
		timePassed += Time.deltaTime;
		durPassed += Time.deltaTime;
	}
	transform.position = pos;
}