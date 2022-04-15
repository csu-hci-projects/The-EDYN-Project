/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.PAPPUS_1;
traitCost = 35;

traitText = "Plant Flower: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait causes the petals of the flower to become light and fluffy " +
			"spindles, which can easily catch the wind when the plant germinates. " +
			"The result is a 100% increase in germination range for the plant."

leadToTraits[12] = false;
traitsRequired[12] = false; 	
traitsRequired[TRAIT.FLOWER_1] = true; 
			