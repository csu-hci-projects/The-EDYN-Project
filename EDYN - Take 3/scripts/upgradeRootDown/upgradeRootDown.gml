// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function upgradeRootDown(root){
	
	root.size++;
	root.rootCurFood++; 
	root.image_index = root.size; 
	root.resourceTimerMax = root.resourceTimerMax - (root.size * 20); 
}