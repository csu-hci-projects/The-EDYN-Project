// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_SetCollision(tX, tY){
	var newTileData = o_MapMaker.theMap[# tX, tY];
	newTileData[@ TILE.COLLISION] = true;
	
}