/// @description Insert description here
// You can write your code in this editor

window_set_fullscreen(isFullscreen)


if (keyboard_check_pressed(vk_enter)) {
	if (isFullscreen) {
		isFullscreen = false;	
	} else {
		isFullscreen = true; 	
	}
}

if (keyboard_check_pressed(vk_escape)) {
	game_end(); 	
}

if (keyboard_check_pressed(vk_f1)) {
	room_restart();	
}