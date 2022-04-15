// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_AddWater(tX, tY, tileMap, tileNotableMap){
	
	var tileNotable = tilemap_get(tileNotableMap, tX, tY); 
	var tileMapData = tilemap_get(tileMap, tX, tY);
	var newTileData = o_MapMaker.theMap[# tX, tY];

	switch (tileMapData) {
	case TILE_ID.SOIL_1: 
		newTileData[@ TILE.WATER] = LOW_YIELD;
		break;
	case TILE_ID.SOIL_2: 
		newTileData[@ TILE.WATER] = MED_YIELD;
		break;
	case TILE_ID.SOIL_3:
		newTileData[@ TILE.WATER] = HIGH_YIELD; 
		break;
	default: 
		newTileData[@ TILE.WATER] = 0;
	}

	switch (tileNotable) {
		case TILE_ID.WATER_1:
			newTileData[@ TILE.WATER] += LOW_YIELD;
			break;
		case TILE_ID.WATER_2:
			newTileData[@ TILE.WATER] += MED_YIELD;
			break
		case TILE_ID.WATER_3:
			newTileData[@ TILE.WATER] += HIGH_YIELD;
			break;
	default:
		break;
	}

	o_MapMaker.theMap[# tX, tY] = newTileData; 
}