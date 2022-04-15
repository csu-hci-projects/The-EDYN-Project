// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckMutationPoints(trait){
	
	traitCost = trait.traitCost;
	plant = o_Manager.playerPlant;
	
	if (plant.curMutationPoints >= traitCost) {
		plant.curMutationPoints -= traitCost;
		return true;
	} else {
		return false; 	
	}

}