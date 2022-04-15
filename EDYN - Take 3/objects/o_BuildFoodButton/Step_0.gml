/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(ButtonClicked(self)) {
	if (o_GuiManager.progressQueued == false) {
		if (CheckPlantNutrients(5)) {
			if (CheckPlantWater(2)) {
				if (CheckPlantSunlight(5)) {
					if (o_Manager.playerPlant.curPlantFood < o_Manager.playerPlant.plantFoodMax) {
						o_Manager.playerPlant.curSunlight = o_Manager.playerPlant.curSunlight - 5;
						o_Manager.playerPlant.curWater = o_Manager.playerPlant.curWater - 2;
						o_Manager.playerPlant.curNutrients = o_Manager.playerPlant.curNutrients - 5; 
						o_GuiManager.progressQueued = true;
						o_GuiManager.curTask = "Food";
					}
				}
			}
		}
	}
}
