// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_CheckTileOccupied(tX, tY){
	
	var newTileData = o_MapMaker.theMap[# tX, tY];
	
	if (newTileData[TILE.COLLISION] == true) {
		return true;	
	} else {
		return false; 	
	}

}