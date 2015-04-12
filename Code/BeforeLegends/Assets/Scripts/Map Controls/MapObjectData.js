#pragma strict

class MapObjectData extends ScriptableObject{
	var pos : Vec2i;
	var moving : boolean = false;
	var paused : boolean = false;
	var suspend : boolean = false;
}
