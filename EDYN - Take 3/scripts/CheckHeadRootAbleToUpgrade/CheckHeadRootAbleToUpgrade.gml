// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckHeadRootAbleToUpgrade(){
	if (o_MouseManager.selectedID.size < o_MouseManager.selectedID.maxSize) {
		if ((o_MouseManager.selectedID.size < o_MouseManager.selectedID.parentPlant.size + 1)) {
			return true;	
		} else {
			return false; 	
		}
	}
}