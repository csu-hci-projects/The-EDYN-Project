// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MouseAtIconObject(){
		iconObject = false;
	if (instance_position(mouse_x, mouse_y, o_Icon)) {
		iconObject = true;	
	} 
	return iconObject; 
}