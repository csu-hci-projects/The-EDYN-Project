// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getTileWater(root){

	var tX = root.x/SIZE
 	var tY = root.y/SIZE
	var tileData = o_MapMaker.theMap[# tX, tY];
	
	var tileData = o_MapMaker.theMap[# tX, tY];
	var tileWater = tileData[TILE.WATER];
	
	return tileWater; 

}