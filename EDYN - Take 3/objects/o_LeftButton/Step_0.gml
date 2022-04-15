/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (ButtonClicked(self)) {
	if (o_GuiManager.progressQueued == false) {
		if (SelectedIDIsGameObject()) {
			if (CheckObjectIsRoot()) {
				if (CheckSpreadRootAbleToGrowLeft()) {
						var selectedObject = o_MouseManager.selectedID;
						var tX = (selectedObject.x - SIZE) / SIZE;
						var tY = (selectedObject.y / SIZE);
					if (CheckRootSpread(selectedObject)) {
						if (!(sc_CheckTileOccupied(tX, tY))) {
							if (PlantHasResourcesToUpgrade()) {
							ProcessAction("GrowRootLeft")
							}
						}
					}
				}
			}
		}
	}
}