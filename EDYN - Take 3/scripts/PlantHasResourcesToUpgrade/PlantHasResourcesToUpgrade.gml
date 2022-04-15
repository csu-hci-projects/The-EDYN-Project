// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlantHasResourcesToUpgrade(){
	
	plant = o_Manager.playerPlant;
	
	if (plant.curNutrients >= 5 && plant.curSunlight >= 5 && plant.curPlantFood >= 1) {
		plant.curNutrients = plant.curNutrients - 5;
		plant.curSunlight = plant.curSunlight - 5;
		plant.curPlantFood--;
		
		return true;
	} else {
		return false; 	
	}

}