// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckAvailableGerminatePos(playerPlant){

	var availableTiles = array_create(playerPlant.germinateDistance * 2 + 1, [0]); 

	plantCurrentTileX = playerPlant.x / SIZE;
	startingXPos = plantCurrentTileX - (playerPlant.germinateDistance * SIZE);
	endXPos = plantCurrentTileX + (playerPlant.germinateDistance * SIZE);

	for (i = startingXPos; i <= endXPos; i++) {
		var availArrayI = 0; 
		if (o_MapMaker.theMap[# i, playerPlant.y / SIZE][TILE.COLLISION] == false) {
			availableTiles[availArrayI] = 1; 
			availArrayI++; 
		}
	}
	
	playerPlant.currentSeed.selectingSproutLocation = true; 
	return availableTiles; 
	
}