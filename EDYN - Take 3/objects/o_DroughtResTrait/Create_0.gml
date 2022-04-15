/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.DROUGHT_1;
traitCost = 35;

traitText = "Drought Resistance: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait decreases total amount of water the plant consumes per day by " +
			"50%, allowing the plant to survive in much poorer soil than it normally would. "

leadToTraits[12] = false;
leadToTraits[TRAIT.FLOWER_1] = true;

traitsRequired[12] = false; 
traitsRequired[TRAIT.BODYSIZE_1] = true;
traitsRequired[TRAIT.NODENUM_1] = true; 