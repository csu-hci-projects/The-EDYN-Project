// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckPlantCanAddNode(){
	if (o_Manager.playerPlant.curNodes < o_Manager.playerPlant.maxNodes) {
		if (o_Manager.playerPlant.hasSeed == false && o_Manager.playerPlant.hasFlower == false) {
			return true;	
		}
	} else {
		return false; 	
	}
}