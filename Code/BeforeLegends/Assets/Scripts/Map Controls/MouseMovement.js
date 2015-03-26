#pragma strict



function Update () {
	gameObject.transform.position.y -= Input.mouseScrollDelta.y;
	
	if(Input.mousePosition.x > Screen.width - 25){
		gameObject.transform.position.x += gameObject.transform.position.y * Time.deltaTime;
	}else if(Input.mousePosition.x < 25){
		gameObject.transform.position.x -= gameObject.transform.position.y * Time.deltaTime;
	}
	
	if(Input.mousePosition.y > Screen.height - 25){
		gameObject.transform.position.z += gameObject.transform.position.y * Time.deltaTime;
	}else if(Input.mousePosition.y < 25){
		gameObject.transform.position.z -= gameObject.transform.position.y * Time.deltaTime;
	}
}