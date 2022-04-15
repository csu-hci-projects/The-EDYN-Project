// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckDownRootAbleToUpgrade(){
		curRoot = o_MouseManager.selectedID;
		prevRoot = o_MouseManager.selectedID.nextUpRoot; 
		
	if (curRoot.size < curRoot.maxSize) {
		if (prevRoot.size >= ROOT_MIN_SIZE_TO_CONTINUE_GROW) {
			if (curRoot.size < ROOT_DOWN_MAX_SIZE_TO_MATCH_1x1) {
				return true;	
			} 
			else if (prevRoot.size >= ROOT_PREV_DOWN_MIN_SIZE_TO_MATCH_1x2) {
				return true; 	
			}
		}
	}
	
	return false; 
}