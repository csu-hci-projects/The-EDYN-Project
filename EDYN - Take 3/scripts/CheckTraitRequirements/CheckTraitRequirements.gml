// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckTraitRequirements(trait, plant){
	
	for (i = 0; i < NUM_TRAITS; i++) {
		if (trait.traitsRequired[i]) {
			if (!(plant.currentTraits[i])) {
				return false; 	
			}
		}
	}
	
	return true; 
}