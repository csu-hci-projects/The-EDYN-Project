// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ButtonClicked(thisButton){

	if (position_meeting(mouse_x, mouse_y, thisButton) && mouse_check_button_pressed(mb_left) && thisButton.buttonActive) {
		return true;
	} else {
		return false; 	
	}
}