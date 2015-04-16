#pragma strict

var dampen : float;

@HideInInspector
var nextPos : Vector3;

function Awake(){
	nextPos = transform.position;
}

function Update () {
	nextPos.y -= Input.mouseScrollDelta.y * 1.5;
	
	if(Input.mousePosition.x > Screen.width - 25){
		nextPos.x += nextPos.y * Time.deltaTime;
	}else if(Input.mousePosition.x < 25){
		nextPos.x -= nextPos.y * Time.deltaTime;
	}
	
	if(Input.mousePosition.y > Screen.height - 25){
		nextPos.z += nextPos.y * Time.deltaTime;
	}else if(Input.mousePosition.y < 25){
		nextPos.z -= nextPos.y * Time.deltaTime;
	}
	
	transform.position.x = Mathf.Lerp(transform.position.x, nextPos.x, Time.deltaTime * dampen); 
	transform.position.y = Mathf.Lerp(transform.position.y, nextPos.y, Time.deltaTime * dampen); 
	transform.position.z = Mathf.Lerp(transform.position.z, nextPos.z, Time.deltaTime * dampen); 
}