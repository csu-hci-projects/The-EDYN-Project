// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MutateTraitToSeed(trait, plant){
	plant.seedTraits[trait.traitID] = true; 
	plant.currentSeedMutationPoints += trait.traitCost;
}