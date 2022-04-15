// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckPlantSunlight(cost){
	
	curSunlight = o_Manager.playerPlant.curSunlight;
	
	if(cost <= curSunlight) {
		return true;	
	} else {
		return false; 	
	}

}