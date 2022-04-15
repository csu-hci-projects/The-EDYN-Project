/// @description Insert description here
// You can write your code in this editor

foodConsumeTimer--;

if (foodConsumeTimer <= 0) {
	if (rootCurFood > 0) {
		show_debug_message("ROOT CONSUMED FOOD")
		rootCurFood--;
	} else {
		show_debug_message("PLANT STARVING");
		parentPlant.curPlantHealth--; 	
	}
	foodConsumeTimer = foodConsumeTimerMax; 
}

if ((rootCurFood < rootMaxFood) && (foodRequested == false) && (parentPlant.playerPlant)) {
	if (parentPlant.curPlantFood > 0) {
		if (parentPlant.rootHead.curPhloemBlocks < parentPlant.rootHead.phloemMax) {
			parentPlant.rootHead.curPhloemBlocks++; 
			foodRequested = true; 
			parentPlant.curPlantFood--;
			var newFood = instance_create_layer(parentPlant.rootHead.x -1, ((parentPlant.rootHead.y - SIZE/2) + 2), "FrontInstances", o_FoodBlock);
			newFood.parentRoot = parentPlant.rootHead;
			newFood.startingParent = parentPlant.rootHead; 
			newFood.targetX = rootX;
			newFood.targetY = rootLevel; 
			if (parentPlant.currentTraits[TRAIT.PHLOEM_1]) {
				newFood.resourceTimerMax = PLANT_TIMER_PHLOEMTRANSFER_MAX * 0.80	
			}
		}
	}
}

if (rootMaxFood != size + 1) {
	rootMaxFood = size + 1; 	
}

if (parentPlant.currentTraits[TRAIT.ROOTSIZE_1]) {
	maxSize = PLANT_MAX_ROOTSIZE_START + 1; 	
}

if (parentPlant.currentTraits[TRAIT.FOOD_1]) {
	foodConsumeTimerMax = PLANT_TIMER_FOODUSE_START * 1.25	
}

rootInfoText = "Root Type: " + string(rootType) + "\n" + 
			"Current Size: " + string(size) + "\n" +
			"Maximum Size: " + string(maxSize) + "\n" + 
			"Xylem: " + string(curXylemBlocks) + "/" + string(xylemMax) +  "\n" +
			"Phloem: " + string(curPhloemBlocks) + "/" + string(phloemMax) +  "\n" + 
			"Food: " + string(rootCurFood) + "/" + string(rootMaxFood) +  "\n" + 
			"Root Depth: " + string(rootLevel);
			

