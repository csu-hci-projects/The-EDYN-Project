/// @description Insert description here
// You can write your code in this editor


calculateNearbyPlantsTimer--;

//show_debug_message(creatureState == CREATURE_STATE.NUETRAL); 

if (calculateNearbyPlantsTimer <= 0) {
	if (creatureState == CREATURE_STATE.NUETRAL) {
		calculateNearbyPlantsTimer = calculateNearbyPlantsTimerMax;
		GetTotalPlantsInRange(self); 
		evolutionPressure = evolutionPressure + (symbioteWeight - predatorWeight); 
		symbioteWeight = 0;
		predatorWeight = 0; 
	}
}