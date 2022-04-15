// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckSpreadRootAbleToUpgrade(){
		curRoot = o_MouseManager.selectedID;
		prevRoot = o_MouseManager.selectedID.previousRoot; 
		
	if (curRoot.size < curRoot.maxSize) {
		if (prevRoot.size >= ROOT_MIN_SIZE_TO_CONTINUE_GROW) {
			if (curRoot.size < ROOT_SPREAD_MAX_SIZE_TO_MATCH_1x1) {
				return true;	
			} 
			else if (prevRoot.size >= ROOT_PREV_SPREAD_MIN_SIZE_TO_MATCH_1x2) {
				return true; 	
			}
		}
	}
	
	return false; 
}