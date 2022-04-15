/// @description Insert description here
// You can write your code in this editor

if (targetY == parentRoot.rootLevel && targetX == parentRoot.rootX) {
	if (resourcesAdded == false) {
		if (parentRoot.rootCurFood < parentRoot.rootMaxFood) {
			parentRoot.rootCurFood++;
			resourcesAdded = true;
			parentRoot.foodRequested = false; 
			if (parentRoot.curPhloemBlocks > 0) {
				parentRoot.curPhloemBlocks--; 
			}
		}
	}
}
