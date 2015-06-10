#pragma strict

var dampen : float;

@HideInInspector
var nextPos : Vector3;

function Awake(){
	nextPos = transform.position;
}

function Update () {
	nextPos.y -= Input.mouseScrollDelta.y * 1.5;
	
	var delta : Vector2 = Vector2.zero;
	
	if(Input.mousePosition.x > Screen.width - 25  || Input.GetKey(KeyCode.D)  || Input.GetKey(KeyCode.RightArrow)){
		delta.x += transform.right.x;
		delta.y += transform.right.z;
		//nextPos.x += nextPos.y * Time.deltaTime;
	}else if(Input.mousePosition.x < 25 || Input.GetKey(KeyCode.A)  || Input.GetKey(KeyCode.LeftArrow)){
		delta.x -= transform.right.x;
		delta.y -= transform.right.z;
	}
	
	if(Input.mousePosition.y > Screen.height - 25 || Input.GetKey(KeyCode.W)  || Input.GetKey(KeyCode.UpArrow)){
		delta.x += transform.up.x;
		delta.y += transform.up.z;
	}else if(Input.mousePosition.y < 25 || Input.GetKey(KeyCode.S)  || Input.GetKey(KeyCode.DownArrow)){
		delta.x -= transform.up.x;
		delta.y -= transform.up.z;
	}
	delta *= nextPos.y * Time.deltaTime;
	nextPos.x += delta.x;
	nextPos.z += delta.y;
	
	
	transform.position.x = Mathf.Lerp(transform.position.x, nextPos.x, Time.deltaTime * dampen); 
	transform.position.y = Mathf.Lerp(transform.position.y, nextPos.y, Time.deltaTime * dampen); 
	transform.position.z = Mathf.Lerp(transform.position.z, nextPos.z, Time.deltaTime * dampen); 
}