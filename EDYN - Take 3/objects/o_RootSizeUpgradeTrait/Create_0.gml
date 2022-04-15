/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.ROOTSIZE_1;
traitCost = 35;

traitText = "Root Size Ugrade: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait allows for the roots of the plant to grow larger."
			
leadToTraits[12] = false;
leadToTraits[TRAIT.FOOD_1] = true;
traitsRequired[12] = false; 	
traitsRequired[TRAIT.XYLEM_1] = true;
traitsRequired[TRAIT.PHLOEM_1] = true;