/// @description Insert description here
// You can write your code in this editor


if (CheckPlayerPlantHasTrait(self)) {
	image_blend = c_dkgray; 	
	traitPresent = true; 	
}

if (CheckPlayerPlantSeedHasTrait(self)) {
	image_blend = c_lime;
	traitResearched = true;
}

if (selected) {
	image_blend = c_aqua; 
	} else if (traitPresent) {
	image_blend = c_dkgray;
	} else if (traitResearched) {
	image_blend = c_lime;
	} else {
	image_blend = c_white; 
}

