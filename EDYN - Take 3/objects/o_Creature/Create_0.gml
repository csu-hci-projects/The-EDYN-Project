/// @description Insert description here
// You can write your code in this editor

creatureState = CREATURE_STATE.NUETRAL; 

predatorWeight = 0;
symbioteWeight = 0;
evolutionPressure = 0; 

symbioteInRange = 0;
preyInRange = 0; 

range = 5; 

calculateNearbyPlantsTimerMax = 600;
calculateNearbyPlantsTimer = calculateNearbyPlantsTimerMax;

placeInGridX = (self.x + SIZE/2)/SIZE;
placeInGridY = (self.y + SIZE/2)/SIZE; 
selected = false; 
highlightTimer = 0;
highlightTimerMax = 0; 