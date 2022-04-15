/// @description Insert description here
// You can write your code in this editor
if (playerPlant) {
	draw_self(); 
} else {
	draw_self();
	image_blend = c_ltgray; 
}

if (selected && playerPlant) {
	HighlightObject(self); 
}
