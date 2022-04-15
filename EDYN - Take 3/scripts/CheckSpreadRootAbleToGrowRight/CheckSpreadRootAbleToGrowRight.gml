// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckSpreadRootAbleToGrowRight(){
	if (o_MouseManager.selectedID.nextRightRoot == undefined) {
		if (o_MouseManager.selectedID.size >= ROOT_MIN_SIZE_TO_CONTINUE_GROW) {
			return 	true;
		} else {
			return false; 	
		}
	}
	
	return false; 
}