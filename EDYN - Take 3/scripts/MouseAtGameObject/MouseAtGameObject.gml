// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MouseAtGameObject(){
	validObject = false;
	
	if (instance_position(mouse_x, mouse_y, o_Root)) {
		validObject = true;	
	} 
	else if (instance_position(mouse_x, mouse_y, o_Plant)) {
		validObject = true; 	
	}
	else if (instance_position(mouse_x, mouse_y, o_ProtoPlantNode)) {
		validObject = true;	
	} 
	else if (instance_position(mouse_x, mouse_y, o_ProtoPlantSeed)) {
		validObject = true; 	
	} 

	return validObject; 
}