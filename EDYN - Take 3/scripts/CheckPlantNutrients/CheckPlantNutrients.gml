// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckPlantNutrients(cost){

	curNutrients = o_Manager.playerPlant.curNutrients;
	
	if (cost <= curNutrients) {
		return true;	
	} else {
		return false; 
	}

}