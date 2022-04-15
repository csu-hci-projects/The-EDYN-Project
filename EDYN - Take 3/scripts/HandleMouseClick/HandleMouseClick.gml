// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HandleMouseClick(mouse){
		mouse.objectClicked = true;
		mouse.selectedID = instance_position(mouse_x, mouse_y, all)
		mouse.selectedID.selected = true; 
}