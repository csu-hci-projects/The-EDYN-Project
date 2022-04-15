/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

endNode = GotoEndNode();

if (o_Manager.playerPlant.hasSeed == true || o_Manager.playerPlant.hasFlower == true) {
	buttonActive = false;	
} else {
	buttonActive = true; 	
}

if (ButtonClicked(self)) {
	if (o_GuiManager.progressQueued == false) {
		if (SelectedIDIsGameObject()) {
			if (CheckObjectIsPlant()) {
				if (CheckPlantNotMaxSize()) {
					if (PlantHasResourcesToUpgrade()) {
						ProcessAction("upgradePlant");
						//Change the remove resources to here. 
					}

				} else if (CheckPlantCanAddNode()) {
					if (PlantHasImmatureNode()) {
						if (PlantHasResourcesToUpgrade()) {
							ProcessAction("upgradeNode");
						}
					} else {
					if (PlantHasResourcesToUpgrade()) {
						ProcessAction("addNode"); 
						}
					}
				} else if (CheckNodeCanUpgrade()) {
					if (PlantHasResourcesToUpgrade()) {
						ProcessAction("upgradeNode")
					}
				}
			
			} //Selected ID is NOT a plant
			else if (CheckObjectIsRoot()) { 
				if (CheckRootIsDownRoot()) {
					if (CheckRootIsHeadRoot()) {
						if (CheckHeadRootAbleToUpgrade()) {
							if (PlantHasResourcesToUpgrade()) {
								ProcessAction("upgradeRootDown")
							}
						}
					} else if (CheckDownRootAbleToUpgrade()) {
							if (PlantHasResourcesToUpgrade()) {
								ProcessAction("upgradeRootDown")
							}
					}
				}  //Selected ID is NOT a down root 
				else if (CheckRootIsSpreadRoot()) { 
					if (CheckSpreadRootAbleToUpgrade()) {
						if (PlantHasResourcesToUpgrade()) {
							ProcessAction("upgradeRootSpread"); 
						}
					}
				}
			}
		}
	}
}