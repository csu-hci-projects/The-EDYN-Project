// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_AddNutrients(tX, tY, tileMap){
	var tileMapData = tilemap_get(tileMap, tX, tY);
	var newTileData = o_MapMaker.theMap[# tX, tY];
	
	switch (tileMapData) {
		case TILE_ID.SOIL_1:
			newTileData[@ TILE.NUTRIENTS] = LOW_YIELD * 4; 
			break;
		case TILE_ID.SOIL_2:
			newTileData[@ TILE.NUTRIENTS] = MED_YIELD * 3;
			break;
		case TILE_ID.SOIL_3:
			newTileData[@ TILE.NUTRIENTS] = HIGH_YIELD * 2; 
			break;
		default: 
			newTileData[@ TILE.NUTRIENTS] = 0; 
			break;
		}
	newTileData[@ TILE.TYPE] = tileMapData; 
	o_MapMaker.theMap[# tX, tY] = newTileData; 
}