/// @description Insert description here
// You can write your code in this editor

if (parentRoot.object_index != o_ProtoPlant) {
	if (parentRoot.rootLevel == 0) {
		if (parentRoot.object_index == o_RootStruct && (startingParent.object_index == o_RootSpreadLeft || startingParent.object_index == o_RootSpreadRight)) {
				if (speedRatio != SIZE/2) {	
					speedRatio = SIZE/2; 
				}
		}
	}
}

transferTimer--;

if (transferTimer <= 0) {
	if (parentRoot.object_index == o_RootSpreadLeft) {
		if (parentRoot.nextRightRoot.curXylemBlocks < parentRoot.nextRightRoot.xylemMax) {
			baseX = self.x + 1; 
			baseY = self.y
			transferTimer = transferTimerMax;
			parentRoot.curXylemBlocks--;
			parentRoot = parentRoot.nextRightRoot;
			parentRoot.curXylemBlocks++;
		} else {
			transferTimer = 2; 
		}
	} 
	else if (parentRoot.object_index == o_RootSpreadRight) {
		if (parentRoot.nextLeftRoot.curXylemBlocks < parentRoot.nextLeftRoot.xylemMax) {
			baseX = self.x - 1; 
			baseY = self.y
			transferTimer = transferTimerMax;
			parentRoot.curXylemBlocks--;
			parentRoot = parentRoot.nextLeftRoot;
			parentRoot.curXylemBlocks++;
		} else {
			transferTimer = 2;
		}
	} 
	else if (parentRoot.object_index == o_RootStruct) {
		if (parentRoot.nextUpRoot.object_index == o_ProtoPlant) {
			if (resourceID == "Nutrient") {
				if (parentRoot.nextUpRoot.curNutrients < parentRoot.nextUpRoot.nutrientsMax) {
					baseX = self.x
					baseY = self.y
					transferTimer = transferTimerMax;
					parentRoot.curXylemBlocks--; 
					parentRoot = parentRoot.nextUpRoot; 	
				} else {
					transferTimer = 2;	
				}
			} 
			else if (resourceID == "Water") {
				if (parentRoot.nextUpRoot.curWater < parentRoot.nextUpRoot.waterMax) {
					baseX = self.x
					baseY = self.y
					transferTimer = transferTimerMax;
					parentRoot.curXylemBlocks--; 
					parentRoot = parentRoot.nextUpRoot; 	
				} else {
					transferTimer = 2; 	
				}
			}
			else if (resourceID == "Radiation") {
				if (parentRoot.nextUpRoot.curRadiation < parentRoot.nextUpRoot.radiationMax) {
					baseX = self.x
					baseY = self.y
					transferTimer = transferTimerMax;
					parentRoot.curXylemBlocks--;
					parentRoot = parentRoot.nextUpRoot; 
				} else {
					transferTimer = 2;
				}
			}
			else if (resourceID == "Contamination") {
				if (parentRoot.nextUpRoot.curContamination < parentRoot.nextUpRoot.contaminationMax) {
					baseX = self.x
					baseY = self.y
					transferTimer = transferTimerMax;
					parentRoot.curXylemBlocks--;
					parentRoot = parentRoot.nextUpRoot; 	
				} else {
					transferTimer = 2;
				}
			}
		} 
		else if (parentRoot.nextUpRoot.object_index == o_RootStruct) {
			if (parentRoot.nextUpRoot.curXylemBlocks < parentRoot.nextUpRoot.xylemMax) {
				baseX = self.x
				baseY = self.y - 1; 
				transferTimer = transferTimerMax;
				parentRoot.curXylemBlocks--;
				parentRoot = parentRoot.nextUpRoot;
				parentRoot.curXylemBlocks++; 
			} else {
				transferTimer = 2; 
			}
		}
	}

}

if (parentRoot.object_index == o_ProtoPlant) {
	destructionTimer--;
	if (destructionTimer <= 0) {
		instance_destroy(self); 
	}
}

if (parentRoot.object_index == o_RootStruct) {
	self.y = baseY - floor(((transferTimerMax - transferTimer)/transferTimerMax) * speedRatio);	
}

if (parentRoot.object_index == o_RootSpreadLeft) {
	self.x = baseX + floor(((transferTimerMax - transferTimer)/transferTimerMax) * speedRatio);	
}

if (parentRoot.object_index == o_RootSpreadRight) {
	self.x = baseX - floor(((transferTimerMax - transferTimer)/transferTimerMax) * speedRatio);	
}

