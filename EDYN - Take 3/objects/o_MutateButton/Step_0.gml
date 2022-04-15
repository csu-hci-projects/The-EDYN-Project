/// @description Insert description here
// You can write your code in this editor

if (!(buttonActive)) {
	image_blend = c_dkgrey; 	
} else {
	image_blend = c_white; 	
}

if (ButtonClicked(self)) {
	image_index = 1;	
	buttonClicked = true; 
	if (o_MouseManager.objectClicked) {
		if (!(CheckPlantHasTrait(o_MouseManager.selectedID.traitID, o_Manager.playerPlant))) {
			if (CheckSeedHasRoom(o_MouseManager.selectedID, o_Manager.playerPlant)) {
				if (CheckTraitRequirements(o_MouseManager.selectedID, o_Manager.playerPlant)) {
					if (CheckMutationPoints(o_MouseManager.selectedID)) {
						MutateTraitToSeed(o_MouseManager.selectedID,  o_Manager.playerPlant);
					}
				}
			}
		}
	}
}

if (buttonClicked) {
	buttonClickedTimer--; 	
}
if (buttonClickedTimer <= 0) {
	image_index = 0;
	buttonClickedTimer = buttonClickedTimerMax; 
	buttonClicked = false;
}