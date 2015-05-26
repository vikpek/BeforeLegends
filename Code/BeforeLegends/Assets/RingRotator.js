#pragma strict

var speed = 10f;

function Update () {
	transform.Rotate(Vector3.up, speed);
}