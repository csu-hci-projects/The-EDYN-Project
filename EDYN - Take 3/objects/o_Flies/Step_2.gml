/// @description Insert description here
// You can write your code in this editor



if (evolutionPressure > 7) {
	self.sprite_index = s_FliesSymbiote
	creatureState = CREATURE_STATE.SYMBIOTE
}

if (evolutionPressure < -7) {
	self.sprite_index = s_FliesPredator
	creatureState = CREATURE_STATE.PREDATOR
}