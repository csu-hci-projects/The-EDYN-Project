/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, self)) {
	image_speed = 2; 	
	 if (mouse_check_button_pressed(mb_left)){
		growNewPlayerPlant(self);
	 }
} else {
	image_index = 0;
	image_speed = 0; 
}
