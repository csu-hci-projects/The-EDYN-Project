// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckPlayerPlantSeedHasTrait(icon){
	if (o_Manager.playerPlant.seedTraits[icon.traitID]) {
	return true; 
} else {
	return false; 
	}
}