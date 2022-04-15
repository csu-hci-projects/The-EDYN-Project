// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_SetObjectInTile(tX, tY, object){

	var newTileData = o_MapMaker.theMap[# tX, tY];
	newTileData[@ TILE.OBJECT_TYPE] = object;

}