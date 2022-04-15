/// @description Insert description here
// You can write your code in this editor

draw_sprite(s_GuiTraitTreePanel, 0, GUI_POPUP_PANEL_X, GUI_POPUP_PANEL_Y);
draw_sprite(s_MutationTraitBarShadow, 0, MUTATE_BAR_X, MUTATE_BAR_Y);
draw_sprite_ext(s_MutationTraitBarFill, 0, MUTATE_BAR_X + 2, (MUTATE_BAR_Y+124) - ((o_Manager.playerPlant.currentSeedMutationPoints/SEED_MUTATION_MAX) * 120), 1, ((o_Manager.playerPlant.currentSeedMutationPoints/SEED_MUTATION_MAX) * 120), 0, c_white, 1); 
draw_sprite(s_MutationTraitBar, 0, MUTATE_BAR_X, MUTATE_BAR_Y); 
draw_set_color(c_black); 
draw_text_ext_transformed(MUTATE_BAR_X + 5, MUTATE_BAR_Y-15, string(o_Manager.playerPlant.currentSeedMutationPoints) + "/" + string(SEED_MUTATION_MAX), 15, 225, 0.5, 0.5, 0); 
