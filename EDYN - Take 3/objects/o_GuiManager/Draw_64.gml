/// @description Insert description here
// You can write your code in this editor


if (progressQueued) {
	if (curTaskTimerMax == -1) {
		curTaskTimerMax = GetTaskLength(curTask)	
	}
	if (curTaskTimer == -1) {
		curTaskTimer = 0; 
	}
	curTaskTimer++; 
	
	if (curTaskTimer >= curTaskTimerMax) {
		curTaskTimerMax = -1;
		curTaskTimer = -1;
		progressQueued = false; 
		FinishTask(curTask, curSelected);
		curTask = "undefined";
		curSelected = undefined; 
	}
}


draw_sprite(s_ProgressBarShadow, 0, 550, 152); 
if (progressQueued) {
	draw_sprite_ext(s_ProgressBarFill, 0, 550, 155, (curTaskTimer / curTaskTimerMax) * progressLength, 1.2, 0, c_white, 1); 	
}

draw_sprite(s_GuiPanel, 0, display_get_gui_width(), 0); 
draw_sprite(s_ResourceBarShadow, 0, 400, 36); 
draw_sprite_ext(s_PlantHealthBarFill, 0, 400, 43, (o_Manager.playerPlant.curPlantHealth/o_Manager.playerPlant.plantMaxHealth) * 128, 1.5, 0, c_white, 1); 
draw_sprite(s_ResourceBarPanel, 0, 320, 0); 
draw_set_color(c_white); 
draw_text_ext_transformed(446, 47, string(o_Manager.playerPlant.curPlantHealth) + "/" + string(o_Manager.playerPlant.plantMaxHealth), 15, 225, 0.5, 0.5, 0);
draw_set_color(c_black); 
draw_text_ext_transformed(518, 14, string(o_Manager.playerPlant.curRadiation) + "/" + string(o_Manager.playerPlant.radiationMax), 15, 225, 0.5, 0.5, 0);
draw_text_ext_transformed(486, 14, string(o_Manager.playerPlant.curContamination) + "/" + string(o_Manager.playerPlant.contaminationMax), 15, 225, 0.5, 0.5, 0);
draw_text_ext_transformed(452, 14, string(o_Manager.playerPlant.curMutationPoints) + "/" + string(o_Manager.playerPlant.mutationPointsMax), 15, 225, 0.5, 0.5, 0);
draw_text_ext_transformed(422, 14, string(o_Manager.playerPlant.curWater) + "/" + string(o_Manager.playerPlant.waterMax), 15, 225, 0.5, 0.5, 0);
draw_text_ext_transformed(390, 14, string(o_Manager.playerPlant.curNutrients) + "/" + string(o_Manager.playerPlant.nutrientsMax), 15, 225, 0.5, 0.5, 0);
draw_text_ext_transformed(354, 14, string(o_Manager.playerPlant.curSunlight) + "/" + string(o_Manager.playerPlant.sunlightMax), 15, 225, 0.5, 0.5, 0);
draw_text_ext_transformed(608, 200, string(o_Manager.playerPlant.curPlantFood) + "/" + string(o_Manager.playerPlant.plantFoodMax), 15, 225, 0.5, 0.5, 0); 

