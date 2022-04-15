/// @description Insert description here
// You can write your code in this editor

if (traitsSet == false) {
	for (i = 0; i < array_length(currentTraits); i++) {
		if (currentTraits[i] == true) {
			AssignTraitModifiers(i, self)
		}
	}
	traitsSet = true; 
}

waterUseTimer--;

if (waterUseTimer <= 0) {
	if (curWater > 0) {
		curWater--;
		waterUseTimer = waterUseTimerMax;
	} else {
		curPlantHealth--;
		waterUseTimer = waterUseTimerMax / 2; 
	}
}

if (currentTraits[TRAIT.RADREC_1]) {
	radRecTimer--; 
	
	if (radRecTimer <= 0) {
		if (curRadiation > 0) {
			curRadiation--; 	
		}
		if (curMutationPoints < mutationPointsMax) {
			curMutationPoints++;	
		}
		radRecTimer = radRecTimerMax; 
	}
}

if (currentTraits[TRAIT.CONTREC_1]) {
	conRecTimer--;
	
	if (conRecTimer <= 0) {
		if (curContamination > 0) {
			curContamination--;	
		}
		if (curNutrients < nutrientsMax - 5) {
			curNutrients = curNutrients + 5; 	
		} else {
			curNutrients = nutrientsMax; 	
		}
		conRecTimer = conRecTimerMax; 
	}
}

var nextNodeSize = 0;  
if (nextNode != undefined) {
	nextNodeSize = nextNode.size; 
}

plantFoodMax = 5 + size + nextNodeSize; 

sunlightGenTimer--;

if (sunlightGenTimer <= 0) {
	if (curSunlight < sunlightMax) {
		curSunlight = curSunlight + 1 + floor(size/2) + floor(nextNodeSize/2); 
		sunlightGenTimer = sunlightGenTimerMax; 
		var radiationRoll = floor(random_range(0, 5))
		
		show_debug_message(string(radiationRoll))
		if (radiationRoll >= 3) {
		curMutationPoints+= 1 + floor(size/2) + floor(nextNodeSize/2);
		}
	}
}
sunlightMax = RESOURCE_MAX_LEVEL_0 * 2; 

maxRootSpread = 2 + curNodes;
maxRootDepth = 2 + curNodes; 

plantInfoText = "Plant Type: " + string(plantType) + "\n" + 
			"Current Size: " + string(size + nextNodeSize) + "\n" +
			"Maximum Size: " + string(maxSize * (curNodes + 1)) + "\n" + 
			"Max Root Spread: " + string(maxRootSpread) + "\n" +
			"Max Root Depth: " + string(maxRootDepth) + "\n" + 
			"Nodes: " + string(curNodes) + "/" + string(maxNodes) + "\n" +
			"Seed Distance: " + string(germinateDistance);

