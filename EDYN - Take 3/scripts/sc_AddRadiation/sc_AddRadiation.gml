// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_AddRadiation(tX, tY, tileNotableMap){
	
	var tileNotable = tilemap_get(tileNotableMap, tX, tY); 
	var newTileData = o_MapMaker.theMap[# tX, tY];

	switch (tileNotable) {
		case TILE_ID.RAD_1: 
			newTileData[@ TILE.RADIATION] = LOW_YIELD;
			break;
		case TILE_ID.RAD_2:
			newTileData[@ TILE.RADIATION] = MED_YIELD;
			break;
		case TILE_ID.RAD_3:
			newTileData[@ TILE.RADIATION] = HIGH_YIELD; 
			break;
		default:
			newTileData[@ TILE.RADIATION] = 0; 
			break;
	}
	o_MapMaker.theMap[# tX, tY] = newTileData; 
}