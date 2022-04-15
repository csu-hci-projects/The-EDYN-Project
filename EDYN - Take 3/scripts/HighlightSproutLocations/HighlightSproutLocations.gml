// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HighlightSproutLocations(plant){

	var hasPappus = CheckPlantHasTrait(TRAIT.PAPPUS_1, plant);

	yLocation = plant.y + SIZE/2;
	xLocation = plant.x + SIZE;
	germinationRange = (plant.germinateDistance * 2); 
	if (hasPappus) {
		germinationRange = germinationRange * 2; 
	}
	
	germinationRange++; 
	
	startLooking = ((xLocation)/SIZE) - floor(germinationRange/2) - 1;
	endLooking = ((xLocation)/SIZE) + floor(germinationRange/2)
	
	
	var availableSproutLocations = array_create(ROOM_W_TILES, false); 
	
	for (i = startLooking; i < endLooking; i++) {
		var tileAttributes = o_MapMaker.theMap[# i, yLocation/SIZE] 
		if (!(tileAttributes[TILE.COLLISION])) {
			availableSproutLocations[i] = true; 	
		}
	}
	
	for (i = 0; i < ROOM_WIDTH/SIZE; i++) {
		if (availableSproutLocations[i]) {
			instance_create_layer((i * SIZE), yLocation, "Instances", o_SproutLocationHighlight); 
		}
	}

}