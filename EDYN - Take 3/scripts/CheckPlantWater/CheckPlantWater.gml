// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckPlantWater(cost){

	curWater = o_Manager.playerPlant.curWater;
	
	if (cost <= curWater) {
		return true;	
	} else {
		return false; 	
	}

}