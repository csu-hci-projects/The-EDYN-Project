/// @description Insert description here
// You can write your code in this editor

if (parentRoot.rootLevel == 0 && parentRoot.rootX == 0) {
	speedRatio = SIZE/2;
} else {
	speedRatio = SIZE; 	
}

transferTimer--;


if (transferTimer <= 0) {

	if (targetY != parentRoot.rootLevel) {
		if (parentRoot.nextDownRoot.curPhloemBlocks < parentRoot.nextDownRoot.phloemMax) {
			parentRoot.curPhloemBlocks--;
			parentRoot = parentRoot.nextDownRoot; 	
			parentRoot.curPhloemBlocks++; 
			baseX = self.x; 
			baseY = self.y + 1; 
			transferTimer = transferTimerMax;
		}
	} 
	if (targetX > parentRoot.rootX) {
		if (parentRoot.nextRightRoot.curPhloemBlocks < parentRoot.nextRightRoot.phloemMax) {
			parentRoot.curPhloemBlocks--;
			parentRoot = parentRoot.nextRightRoot; 	
			parentRoot.curPhloemBlocks++; 
			baseX = self.x + 1; 
			baseY = self.y; 
			transferTimer = transferTimerMax;
		}
	}
	if (targetX < parentRoot.rootX) {
		if (parentRoot.nextLeftRoot.curPhloemBlocks < parentRoot.nextLeftRoot.phloemMax) {
			parentRoot.curPhloemBlocks--;
			parentRoot = parentRoot.nextLeftRoot; 	
			parentRoot.curPhloemBlocks++; 
			baseX = self.x - 1; 
			baseY = self.y; 
			transferTimer = transferTimerMax;
		}
	}
}

if (targetY == parentRoot.rootLevel && targetX == parentRoot.rootX) {
	destructionTimer--;
}

if (destructionTimer <= 0) {
	instance_destroy(self);
}

if (parentRoot.object_index == o_RootStruct) {
	self.y = baseY + floor(((transferTimerMax - transferTimer)/transferTimerMax) * speedRatio);	
}

if (parentRoot.object_index == o_RootSpreadLeft) {
	self.x = baseX - floor(((transferTimerMax - transferTimer)/transferTimerMax) * speedRatio);	
}

if (parentRoot.object_index == o_RootSpreadRight) {
	self.x = baseX + floor(((transferTimerMax - transferTimer)/transferTimerMax) * speedRatio);	
}

