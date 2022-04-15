/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

endNode = GotoEndNode();

if (endNode.size < endNode.maxSize || o_Manager.playerPlant.hasSeed) {
	buttonActive = false;	
} else {
	buttonActive = true; 	
}

if (ButtonClicked(self)) {
	if (o_GuiManager.progressQueued == false) {
		if (o_Manager.playerPlant.currentTraits[TRAIT.FLOWER_1]) {
			if (o_Manager.playerPlant.hasFlower == false) {
				if (PlantHasResourcesToGrowSeed()) {
					ProcessAction("GrowFlower"); 
				}
			} else {
				ProcessAction("GrowSeed");
			}
		} else {
			if (PlantHasResourcesToGrowSeed()) {
				ProcessAction("GrowSeed");
			}
		}
	}
}