/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (ButtonClicked(self)) {
	if(!(traitTreeUp)) {
		instance_create_layer(0,0, "Instances", o_GUITraitTreeManager); 
	}
}