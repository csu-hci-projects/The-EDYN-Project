// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlantHasResourcesToGrowSeed(){
	
	plant = o_Manager.playerPlant;
	
	if (plant.curNutrients >= 10 && plant.curSunlight >= 10 && plant.curWater >= 4 && plant.curPlantFood >= 2) {
		plant.curNutrients = plant.curNutrients - 10;
		plant.curSunlight = plant.curSunlight -10;
		plant.curWater = plant.curWater - 4;
		plant.curPlantFood = plant.curPlantFood -2; 
		return true;
	} else {
		return false; 	
	}

}