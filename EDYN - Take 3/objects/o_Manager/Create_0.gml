/// @description Insert description here
// You can write your code in this editor


randomize();
show_debug_overlay(true);
//window_set_fullscreen(true); 

#macro ROOM_WIDTH 1280
#macro ROOM_HEIGHT 720
#macro CAMERA_WIDTH ROOM_WIDTH/2
#macro CAMERA_HEIGHT ROOM_HEIGHT/2
#macro SIZE 16
#macro ROOM_W_TILES ROOM_WIDTH/16
#macro ROOM_H_TILES ROOM_HEIGHT/16
#macro LOW_YIELD 250
#macro MED_YIELD 500
#macro HIGH_YIELD 1000
#macro PLANT_Y_OFFSET SIZE * 2.25

//GAME MECHANICS
#macro ROOT_MIN_SIZE_TO_CONTINUE_GROW 3
#macro ROOT_SPREAD_MAX_SIZE_TO_MATCH_1x1 1
#macro ROOT_SPREAD_MAX_SIZE_TO_MATCH_1x2 2
#macro ROOT_PREV_SPREAD_MIN_SIZE_TO_MATCH_1x2 4
#macro ROOT_DOWN_MAX_SIZE_TO_MATCH_1x1 1
#macro ROOT_DOWN_MAX_SIZE_TO_MATCH_1x2 2
#macro ROOT_PREV_DOWN_MIN_SIZE_TO_MATCH_1x2 4 
#macro RESOURCE_MAX_LEVEL_0 50
#macro RESOURCE_MAX_LEVEL_1 75
#macro RESOURCE_SUN_GENERATE_TIMER 180
#macro PLANT_MAX_HEALTH 100
#macro SEED_MUTATION_MAX 70
#macro NUM_TRAITS 13
#macro RESOURCE_TIMER_MAX 380

//PLANT ATTRIBUTES
#macro PLANT_MAX_BODYSIZE_START 4
#macro PLANT_MAX_ROOTSIZE_START 4
#macro PLANT_MAX_NODES_START 0
#macro PLANT_MAX_XYLEMCAP_START 6
#macro PLANT_MAX_PHLOEMCAP_START 6
#macro PLANT_TIMER_WATERUSE_START 1200
#macro PLANT_TIMER_FOODUSE_START 5400
#macro PLANT_TIMER_XYLEMTRANSFER_MAX 480
#macro PLANT_TIMER_PHLOEMTRANSFER_MAX 480
#macro PLANT_TIMER_REC_MAX 180




window_set_size(ROOM_WIDTH, ROOM_HEIGHT); 


enum TILE {
	NUTRIENTS = 0,
	WATER = 1,
	CONTAMINATION = 2, 
	RADIATION = 3,
	TYPE = 4,
	COLLISION = 5,
	OBJECT_TYPE = 6
}

enum TRAIT {
	XYLEM_1 = 0,
	PHLOEM_1 = 1,
	BODYSIZE_1 = 2,
	CONTREC_1 = 3, 
	RADREC_1 = 4, 
	ROOTSIZE_1 = 5, 
	DROUGHT_1 = 6,
	NODENUM_1 = 7,
	FOOD_1 = 8,
	RHIZOME_1 = 9,
	STOLON_1 = 10,
	PAPPUS_1 = 11,
	FLOWER_1 = 12
}

enum TILE_ID {
	WATER_1 = 4,
	WATER_2 = 5,
	WATER_3 = 6,
	RAD_1 = 7,
	RAD_2 = 11,
	RAD_3 = 15,
	CON_1 = 8, 
	CON_2 = 9,
	CON_3 = 10,
	SOIL_1 = 12,
	SOIL_2 = 13,
	SOIL_3 = 14
}

enum CREATURE_STATE {
	PREDATOR = 0,
	NUETRAL = 1, 
	SYMBIOTE = 2
}

instance_create_layer(0,0,"Instances", o_MapMaker);
instance_create_layer(0,0, "Instances", o_MouseManager); 
instance_create_layer(0,0, "Instances", o_GuiManager); 
instance_create_layer(0,0, "Instances", o_ViewManager); 
instance_create_layer(0,0, "Instances", o_DebugControls);
playerPlant = instance_create_layer(ROOM_WIDTH/2 + (SIZE/2), ROOM_HEIGHT/4+PLANT_Y_OFFSET, "Instances", o_ProtoPlant);
playerPlant.playerPlant = true; 




