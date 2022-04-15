// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckSeedHasRoom(trait, plant){
	if (trait.traitCost + plant.currentSeedMutationPoints <= SEED_MUTATION_MAX) {
		return true; 	
	} else {
		return false; 	
	}
}