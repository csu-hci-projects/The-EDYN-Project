// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_AddContamination(tX, tY, tileNotableMap){

	var tileNotable = tilemap_get(tileNotableMap, tX, tY); 
	var newTileData = o_MapMaker.theMap[# tX, tY];

	switch (tileNotable) {
		case TILE_ID.CON_1: 
			newTileData[@ TILE.CONTAMINATION] = LOW_YIELD;
			break;
		case TILE_ID.CON_2:
			newTileData[@ TILE.CONTAMINATION] = MED_YIELD;
			break;
		case TILE_ID.CON_3:
			newTileData[@ TILE.CONTAMINATION] = HIGH_YIELD; 
			break;
		default:
			newTileData[@ TILE.CONTAMINATION] = 0; 
			break;
	}
	o_MapMaker.theMap[# tX, tY] = newTileData; 
}
