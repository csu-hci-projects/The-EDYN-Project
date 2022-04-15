// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetTotalPlantsInRange(creature){

	var gridStartX = creature.placeInGridX - creature.range;
	var gridStartY = creature.placeInGridY - creature.range;
	var gridEndX = creature.placeInGridX + creature.range;
	var gridEndY = creature.placeInGridY + creature.range; 
	
	for (i = gridStartX; i < gridEndX; i++) {
		for (j = gridStartY; j < gridEndY; j++) {
			var tile = o_MapMaker.theMap[# i, j];
			if (tile[TILE.COLLISION]) {
				var plant = tile[TILE.OBJECT_TYPE];
					if (object_is_ancestor(plant.object_index, o_Plant)) {
						if (plant.hasFlower) {
							creature.symbioteWeight++;	
						} else {
							creature.predatorWeight++;	
					}
				}
			}
		}
	}

}

