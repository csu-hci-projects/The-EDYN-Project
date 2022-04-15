/// @description Insert description here
// You can write your code in this editor

draw_self(); 

if (selected) {
	draw_sprite(s_CreatureRadius, 0, self.x+SIZE/2, self.y+SIZE/2); 
	draw_sprite(s_EvolutionPressureBarShadow, 0, self.x-SIZE/2, self.y-SIZE);
	
	draw_sprite_stretched(s_EvolutionPressureBarFill, 0, self.x-SIZE/2 + 11, self.y-SIZE + 5,4 + evolutionPressure,7);
	draw_sprite_stretched(s_EvolutionPressureBarFill, 0, ((self.x-SIZE/2 + 10) - (1 - evolutionPressure)), self.y-SIZE + 5,1 - evolutionPressure,7);

	draw_sprite(s_EvolutionPressureBar, 0, self.x-SIZE/2, self.y-SIZE); 
}