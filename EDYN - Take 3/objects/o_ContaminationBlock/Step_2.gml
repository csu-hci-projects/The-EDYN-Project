/// @description Insert description here
// You can write your code in this editor

if (parentRoot.object_index == o_ProtoPlant) {
	if (!(resourcesAdded)) {
		if (parentRoot.curContamination < parentRoot.contaminationMax) {
			parentRoot.curContamination++; 
			resourcesAdded = true; 
		} else {
			destructionTimer = destructionTimerMax; 	
		}
	}
}
