#pragma strict

var noClearAfterStart : boolean;

function Start () {
	GetComponent.<Camera>().clearFlags = CameraClearFlags.Color;
}

function OnPostRender () {
	if(!noClearAfterStart)
		GetComponent.<Camera>().clearFlags = CameraClearFlags.Depth;
}