// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FinishTask(task, curSelected){
	
	
	
	switch(task) {
		case "Food":
			o_Manager.playerPlant.curPlantFood++;
			break; 
		case "upgradeNode":
			upgradeNode();
			break; 
		case "upgradePlant":
			upgradePlant();
			break; 
		case "addNode":
			addNode(); 	
			break; 
		case "upgradeRootDown":
			upgradeRootDown(curSelected);
			break; 
		case "upgradeRootSpread":
			upgradeRootSpread(curSelected);
			break; 
		case "GrowRootRight":
			GrowRootRight(curSelected); 
			break;
		case "GrowRootLeft":
			GrowRootLeft(curSelected); 
			break;
		case "GrowRootDownwards":
			GrowRootDownwards(curSelected);
			break; 
		case "GrowSeed":
			GrowSeed();
			break;
		case "GrowFlower":
			GrowFlower(); 
			break;
	}

}