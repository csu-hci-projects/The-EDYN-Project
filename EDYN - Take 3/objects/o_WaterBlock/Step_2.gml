/// @description Insert description here
// You can write your code in this editor

if (parentRoot.object_index == o_ProtoPlant) {
	if (!(resourcesAdded)) {
		if (parentRoot.curWater < parentRoot.waterMax) {
			parentRoot.curWater++; 
			resourcesAdded = true; 
		} else {
			destructionTimer = destructionTimerMax; 	
		}
	}
}