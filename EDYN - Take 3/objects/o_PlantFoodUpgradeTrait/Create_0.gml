/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.FOOD_1;
traitCost = 35;

traitText = "Food Efficiency: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"By increasing the nutrient density in plant food, this trait extends the time the root calls for food from  " +
			"the plant by 25%. "
			
leadToTraits[12] = false;
leadToTraits[TRAIT.RHIZOME_1] = true;
traitsRequired[12] = false; 	
traitsRequired[TRAIT.ROOTSIZE_1] = true;