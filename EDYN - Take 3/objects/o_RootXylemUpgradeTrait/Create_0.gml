/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.XYLEM_1;
traitCost = 25;

traitText = "Xylem Flow Upgrade: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait decreases the viscosity of the fluid in your Xylem without " +
			"decreasing it's overall carrying capacity. The result is all resources " + 
			"carried from the roots to plants are done so faster."
			
leadToTraits[12] = false;
traitsRequired[12] = false; 	
