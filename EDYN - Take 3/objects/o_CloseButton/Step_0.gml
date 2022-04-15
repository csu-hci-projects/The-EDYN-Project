/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (ButtonClicked(self)) {
	o_TraitTreeButton.traitTreeUp = false;
	closed = true;
}	

if (closed) {
	cleanupTimer--;
	if (cleanupTimer == 0) {
		o_MouseManager.objectClicked = false; 
		instance_destroy(o_GUITraitTreeManager); 
		instance_destroy(o_Icon); 
	}
}
