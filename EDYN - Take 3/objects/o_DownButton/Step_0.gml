/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (ButtonClicked(self)) {
	if (o_GuiManager.progressQueued == false) {
	if (SelectedIDIsGameObject()) {
		if (CheckRootIsDownRoot()) {
			if (CheckRootAbleToGrow()) {
					var selectedObject = o_MouseManager.selectedID;
					var tX = selectedObject.x /SIZE;
					var tY = ((selectedObject.y + SIZE) / SIZE);
				if (CheckRootDepth(selectedObject)) {
					if (!(sc_CheckTileOccupied(tX, tY))) {
						if (PlantHasResourcesToUpgrade()) {
							ProcessAction("GrowRootDownwards"); 
							}
						}
					}
				}
			}
		}
	}
}