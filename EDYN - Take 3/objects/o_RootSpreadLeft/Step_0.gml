/// @description Insert description here
// You can write your code in this editor

resourceTimer--; 

if (resourceTimer <= 0 && parentPlant.playerPlant) {
	resourceTimer = resourceTimerMax; 
	
	if (curXylemBlocks < xylemMax) {
		curXylemBlocks++; 
	
		var totalResources = tileNutrients + tileWater + tileRad + tileCon 
		var nutRatio = tileNutrients / totalResources;
		var waterRatio = tileWater / totalResources;
		var radRatio = tileRad / totalResources;
		var conRatio = tileCon / totalResources; 
	
		var resourceRoll = random_range(0,1); 
	
		if (resourceRoll > 0 && resourceRoll <= nutRatio) {
			//Generated Nutrients
			var newResource = instance_create_layer(self.x, self.y-2, "FrontInstances", o_NutrientBlock); 
			newResource.parentRoot = self; 
			newResource.startingParent = self; 
			if (parentPlant.currentTraits[TRAIT.XYLEM_1]) {
				newResource.resourceTimerMax = PLANT_TIMER_XYLEMTRANSFER_MAX * 0.80	
			}
			tileNutrients--; 
		} 
		else if (resourceRoll > nutRatio && resourceRoll <= nutRatio + waterRatio) {
			//Generated Water
			var newResource = instance_create_layer(self.x, self.y-2, "FrontInstances", o_WaterBlock); 
			newResource.parentRoot = self; 
			newResource.startingParent = self; 
			if (parentPlant.currentTraits[TRAIT.XYLEM_1]) {
				newResource.transferTimerMax = PLANT_TIMER_XYLEMTRANSFER_MAX * 0.80	
			}
			tileWater--;
		}
		else if (resourceRoll > nutRatio + waterRatio && resourceRoll <= nutRatio + waterRatio + radRatio) {
			//Generated Radiation	
			var newResource = instance_create_layer(self.x, self.y-2, "FrontInstances", o_RadiationBlock); 
			newResource.parentRoot = self; 
			newResource.startingParent = self; 
			if (parentPlant.currentTraits[TRAIT.XYLEM_1]) {
				newResource.transferTimerMax = PLANT_TIMER_XYLEMTRANSFER_MAX * 0.80	
			}
			tileRad--;
		}
		else if (resourceRoll > nutRatio + waterRatio + waterRatio && resourceRoll <= nutRatio + waterRatio + radRatio + conRatio) {
			//Generated Contamination	
			var newResource = instance_create_layer(self.x, self.y-2, "FrontInstances", o_ContaminationBlock); 
			newResource.parentRoot = self; 
			newResource.startingParent = self; 		
			if (parentPlant.currentTraits[TRAIT.XYLEM_1]) {
				newResource.transferTimerMax = PLANT_TIMER_XYLEMTRANSFER_MAX * 0.80	
			}
			tileCon--; 
		} else {
			show_debug_message("ERROR: RESOURCE GENERATION FAILED AT ROLL STEP"); 	
		}
	}
}