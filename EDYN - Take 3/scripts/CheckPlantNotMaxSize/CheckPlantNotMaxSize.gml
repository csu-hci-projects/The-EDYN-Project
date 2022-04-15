// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckPlantNotMaxSize(){
	if (o_MouseManager.selectedID.size < o_MouseManager.selectedID.maxSize) {
		return true;	
	} else {
		return false; 	
	}
}