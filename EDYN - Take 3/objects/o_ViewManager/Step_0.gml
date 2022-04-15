/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("W"))) {
	if (camera_get_view_y(view_camera[0]) > 0) {
		camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])-CAMERA_SCROLL_SPEED);
	}
}
if (keyboard_check(ord("S"))) {
		if (camera_get_view_y(view_camera[0]) < CAMERA_HEIGHT) {
		camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+CAMERA_SCROLL_SPEED);
	}
}
if (keyboard_check(ord("D"))) {
	if (camera_get_view_x(view_camera[0]) < CAMERA_WIDTH) {
		camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0])+CAMERA_SCROLL_SPEED, camera_get_view_y(view_camera[0]));
	}
}
if (keyboard_check(ord("A"))) {
	if (camera_get_view_x(view_camera[0]) > 0) {
		camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0])-CAMERA_SCROLL_SPEED, camera_get_view_y(view_camera[0]));
	}
}