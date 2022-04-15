/// @description Makes the map
//	Setting it to default values
//	You can write your code in this editor

theMap = ds_grid_create(ROOM_W_TILES, ROOM_H_TILES);
//DEBUGGING


//TILE ATTRIBUTES
// NUTRIENT DENSITY
// WATER DENSITY
// CONTAMINATED DENSITY
// RADIOACTIVITY 

var tileMap = layer_tilemap_get_id("T_Main"); 
var tileNotableMap = layer_tilemap_get_id("T_Notables");


for (var tX = 0; tX < ROOM_W_TILES; tX++) {
	for (var tY = 0; tY < ROOM_H_TILES; tY++) {
		theMap[# tX, tY] = [-1, -1, -1, -1, -1, 0, "null"]
		sc_AddNutrients(tX, tY, tileMap); 
		sc_AddWater(tX, tY, tileMap, tileNotableMap); 
		sc_AddRadiation(tX, tY, tileNotableMap); 
		sc_AddContamination(tX, tY, tileNotableMap); 
	}
}
