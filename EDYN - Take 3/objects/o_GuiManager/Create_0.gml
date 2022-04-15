/// @description Insert description here
// You can write your code in this editor

//Sets the view_camera to a local var
camera = view_camera[0];

#macro HIGHLIGHT_TIMER_MAX 100
#macro BUTTON_CLICKED_TIMER 10
#macro UPGRADE_BUTTON_X camera_get_view_x(camera) + CAMERA_WIDTH - 91
#macro UPGRADE_BUTTON_Y camera_get_view_y(camera) + CAMERA_HEIGHT - 90
#macro GROW_BUTTON_X camera_get_view_x(camera) + CAMERA_WIDTH - 99
#macro GROW_BUTTON_Y camera_get_view_y(camera) + CAMERA_HEIGHT - 47
#macro GROW_BUTTON_X_OFFSET 36
#macro GUI_POPUP_PANEL_X display_get_gui_width()/3
#macro GUI_POPUP_PANEL_Y display_get_gui_height()/4
#macro UPGRADE_BUTTON_Y_OFFSET 40
#macro GERMINATE_BUTTON_X_OFFSET 48



#macro MAIN_PANEL_BUTTONS_X camera_get_view_x(camera) + CAMERA_WIDTH - 84
#macro MAIN_PANEL_BUTTONS_Y camera_get_view_y(camera) + CAMERA_HEIGHT - 250




upButton = instance_create_layer(UPGRADE_BUTTON_X, UPGRADE_BUTTON_Y, "Instances", o_UpButton); 
leftButton = instance_create_layer(GROW_BUTTON_X, GROW_BUTTON_Y, "Instances", o_LeftButton);
downButton = instance_create_layer(GROW_BUTTON_X + GROW_BUTTON_X_OFFSET, GROW_BUTTON_Y, "Instances", o_DownButton); 
rightButton = instance_create_layer(GROW_BUTTON_X + GROW_BUTTON_X_OFFSET * 2, GROW_BUTTON_Y, "Instances", o_RightButton); 

traitTreeButton = instance_create_layer(MAIN_PANEL_BUTTONS_X, MAIN_PANEL_BUTTONS_Y, "Instances", o_TraitTreeButton); 
growSeedButton = instance_create_layer(UPGRADE_BUTTON_X, UPGRADE_BUTTON_Y - UPGRADE_BUTTON_Y_OFFSET, "Instances", o_GrowSeedButton); 
germinateButton = instance_create_layer(MAIN_PANEL_BUTTONS_X + GERMINATE_BUTTON_X_OFFSET, MAIN_PANEL_BUTTONS_Y, "Instances", o_GerminateButton); 
buildFoodButton = instance_create_layer(MAIN_PANEL_BUTTONS_X - 7, UPGRADE_BUTTON_Y - (UPGRADE_BUTTON_Y_OFFSET * 2) + 4, "Instances",  o_BuildFoodButton); 

//Progress Bar Stuff
progressQueued = false; 
progressLength = 88; 
curTask = "undefined"; 
curTaskTimer = -1;
curTaskTimerMax = -1; 
curSelected = undefined; 
