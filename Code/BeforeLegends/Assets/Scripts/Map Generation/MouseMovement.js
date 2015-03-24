#pragma strict



function Update () {
	
	if(Input.mousePosition.x > Screen.width * 0.9){
		gameObject.transform.position.x += 50 * Time.deltaTime;
	}else if(Input.mousePosition.x < Screen.width * 0.1){
		gameObject.transform.position.x -= 50 * Time.deltaTime;
	}
	
	if(Input.mousePosition.y > Screen.height * 0.9){
		gameObject.transform.position.z += 50 * Time.deltaTime;
	}else if(Input.mousePosition.y < Screen.height * 0.1){
		gameObject.transform.position.z -= 50 * Time.deltaTime;
	}
	
	Debug.Log(Input.mouseScrollDelta);
	
	gameObject.transform.position.y -= Input.mouseScrollDelta.y;
}