/// @description Insert description here
// You can write your code in this editor

if (parentPlant.playerPlant) {
	draw_self(); 
} else {
	draw_self();
	image_blend = c_ltgray; 
}

if (parentPlant.selected && parentPlant.playerPlant) {
	HighlightObject(self); 
}

highlightTimer = parentPlant.highlightTimer;


if (selected) {
	transferSelectedID(self);
	selected = false; 
}