// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckPlayerPlantHasTrait(icon){
	if (o_Manager.playerPlant.currentTraits[icon.traitID]) {
	return true; 
} else {
	return false; 
	}
}