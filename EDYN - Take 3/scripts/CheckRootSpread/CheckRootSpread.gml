// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckRootSpread(root){
	
	
	if (abs(root.rootX) < (root.parentPlant.maxRootSpread - root.rootLevel)) {
		return true;
	} else {
		return false; 
	}	

}