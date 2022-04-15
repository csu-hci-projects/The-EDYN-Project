/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.RHIZOME_1;
traitCost = 70;

traitText = "Plant Rhizome: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait allows for the plant to grow a Rhizome on the main root bodies." +
			"Rhizomes provide significant nutrient, food, and water storage; Allowing " +
			"the plant to survive in extremely harsh conditions. "
			
leadToTraits[12] = false;
traitsRequired[12] = false; 
traitsRequired[TRAIT.FOOD_1] = true;