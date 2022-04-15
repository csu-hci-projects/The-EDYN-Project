/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

playerPlant = o_Manager.playerPlant; 

if (playerPlant.hasSeed) {
	buttonActive = true;	
} else {
	buttonActive = false; 	
}

if (ButtonClicked(self)) {
	if (!(selectingLocation)) {
		selectingLocation = true; 
		HighlightSproutLocations(playerPlant);	
	} else {
		selectingLocation = false; 
		instance_destroy(o_SproutLocationHighlight); 	
	}
}