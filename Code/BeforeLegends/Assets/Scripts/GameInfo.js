#pragma strict

static var instance: GameInfo;
var battleCameraPosAssigned : boolean = false;
var battleCameraPos : Vector3;

function Start () {
    if(!instance) instance = this;
}

function assignBattleCameraPos(camera : GameObject)
{
    if(!battleCameraPosAssigned)                    // I know that line is a bit pointless
        battleCameraPos = camera.transform.position;
    battleCameraPosAssigned = true;
}