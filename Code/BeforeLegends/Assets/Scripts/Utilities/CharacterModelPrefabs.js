#pragma strict

static var prefabs : GameObject[];

var prefabs_editor : GameObject[];

static var battlePrefabs : GameObject[];

var battlePrefabs_editor : GameObject[];

static var ressourcePrefabs : GameObject[];

var ressourcePrefabs_editor : GameObject[];

function Awake(){
	prefabs = prefabs_editor;
	battlePrefabs = battlePrefabs_editor;
	ressourcePrefabs = ressourcePrefabs_editor;
}