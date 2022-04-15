// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckRootIsHeadRoot(){
	if (o_MouseManager.selectedID.parentPlant.rootHead == o_MouseManager.selectedID) {
		return true;
	} else {
		return false; 	
	}
}