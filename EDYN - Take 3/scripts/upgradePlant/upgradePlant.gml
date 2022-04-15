// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function upgradePlant(){
	plant = o_Manager.playerPlant; 
	
	plant.size++;
	plant.image_index = plant.size; 
}