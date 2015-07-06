#pragma strict

//var battleParameters : UnitData;
var level : int;
var exp : int;

var expToLevelUp : int[];
//var levelUpChange : UnitData[];

function LevelUp() { 
	if(level >= 5)
		return;
	if(exp >= expToLevelUp[level - 1]) {
		//battleParameters = battleParameters.combine(levelUpChange[level-1]);
		level++;
	}
}