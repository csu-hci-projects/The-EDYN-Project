// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetTaskLength(task){
	
	taskLength = 0; 
	
	switch (task){
		case "Food":
			taskLength = 300;
			break; 
		case "addNode":
		case "upgradeNode":
		case "upgradePlant":
		case "upgradeRootDown":
		case "upgradeRootSpread": 
		case "GrowRootRight":
		case "GrowRootLeft":
		case "GrowRootDownwards":
		case "GrowFlower":
		case "GrowSeed":
		
			taskLength = 600;
			break;
	}

	
	return taskLength; 
}