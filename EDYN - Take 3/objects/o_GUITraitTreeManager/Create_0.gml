/// @description Insert description here
// You can write your code in this editor

//Sets the view_camera to a local var
camera = view_camera[0];

#macro CLOSE_BUTTON_X camera_get_view_x(camera) + CAMERA_WIDTH - 192
#macro CLOSE_BUTTON_Y camera_get_view_y(camera) + CAMERA_HEIGHT - 268
#macro MUTATE_BUTTON_X camera_get_view_x(camera) + CAMERA_WIDTH - 336
#macro MUTATE_BUTTON_Y camera_get_view_y(camera) + CAMERA_HEIGHT - 75

#macro TIER_0_X_POS camera_get_view_x(camera) + CAMERA_WIDTH - 418
#macro TIER_0_Y_POS camera_get_view_y(camera) + CAMERA_HEIGHT - 261
#macro TIER_1_X_POS camera_get_view_x(camera) + CAMERA_WIDTH - 385
#macro TIER_2_X_POS camera_get_view_x(camera) + CAMERA_WIDTH - 353
#macro MUTATE_BAR_X 336
#macro MUTATE_BAR_Y 148


closeButton = instance_create_layer(CLOSE_BUTTON_X,CLOSE_BUTTON_Y, "Instances", o_CloseButton);
mutateButton = instance_create_layer(MUTATE_BUTTON_X, MUTATE_BUTTON_Y, "Instances", o_MutateButton); 

//Traits

//Tier 0 Traits

xylemUpgrade = instance_create_layer(TIER_0_X_POS,TIER_0_Y_POS, "FrontInstances", o_RootXylemUpgradeTrait);
phloemUpgrade = instance_create_layer(TIER_0_X_POS,TIER_0_Y_POS + SIZE * 2, "FrontInstances", o_RootPhloemUpgradeTrait); 
bodySizeUpgrade = instance_create_layer(TIER_0_X_POS,TIER_0_Y_POS + SIZE * 4, "FrontInstances", o_PlantBodySizeUpgradeTrait); 
maxNodeUpgrade = instance_create_layer(TIER_0_X_POS,TIER_0_Y_POS + SIZE * 6, "FrontInstances", o_MaxNodeUpgradeTrait); 
contaminationRecUpgrade = instance_create_layer(TIER_0_X_POS,TIER_0_Y_POS + SIZE * 8, "FrontInstances", o_ContaminationRecTrait); 
radiationRecUpgrade = instance_create_layer(TIER_0_X_POS,TIER_0_Y_POS + SIZE * 10, "FrontInstances", o_RadiationRecTrait); 

//Tier 1 Traits
rootSizeUpgrade = instance_create_layer(TIER_1_X_POS,TIER_0_Y_POS + SIZE, "FrontInstances", o_RootSizeUpgradeTrait); 
droughtResUpgrade = instance_create_layer(TIER_1_X_POS,TIER_0_Y_POS + SIZE * 5, "FrontInstances", o_DroughtResTrait); 

//Tier 2 Traits
plantFoodUpgrade = instance_create_layer(TIER_2_X_POS,TIER_0_Y_POS + SIZE, "FrontInstances", o_PlantFoodUpgradeTrait); 
plantFlowerUpgrade = instance_create_layer(TIER_2_X_POS,TIER_0_Y_POS + SIZE * 5, "FrontInstances", o_FlowerTrait); 
plantPappusUpgrade = instance_create_layer(TIER_2_X_POS, TIER_0_Y_POS + SIZE * 7, "FrontInstances", o_PappusTrait); 

//Tier 3 Traits
rootRhizomeUpgrade = instance_create_layer(TIER_2_X_POS + SIZE * 2,TIER_0_Y_POS + SIZE, "FrontInstances", o_RhizomeTrait); 
plantStolonUpgrade = instance_create_layer(TIER_2_X_POS + SIZE * 2,TIER_0_Y_POS + SIZE * 5, "FrontInstances", o_StolonTrait); 