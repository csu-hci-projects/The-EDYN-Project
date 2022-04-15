// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckRootDepth(root){
	
	if (root.rootLevel < root.parentPlant.maxRootDepth) {
		return true;	
	} else {
		return false; 	
	}

}