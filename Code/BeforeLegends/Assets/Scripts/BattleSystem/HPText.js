#pragma strict

var tm : TextMesh;

function setVal(v : float){
	var hp : int = Mathf.Round(v);
	if(hp < 0) hp = 0;
	tm.text = "" + hp;
}