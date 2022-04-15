// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckPlantHasTrait(traitNumber, plant){
	if (plant.currentTraits[traitNumber]) {
		return true;	
	} else {
		return false;	
	}
}