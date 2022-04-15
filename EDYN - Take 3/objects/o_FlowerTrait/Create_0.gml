/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.FLOWER_1;
traitCost = 35;

traitText = "Plant Flower: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait makes the plant grow a flower before it grows a seed. " +
			"While the plant has a flower, it may entice pollinators to investigate, " + 
			"gaining a small mount of mutation points each time a pollinator visits. " +
			"You only have to pay the cost of growing the seed once." 
			
leadToTraits[12] = false;
leadToTraits[TRAIT.PAPPUS_1] = true;
leadToTraits[TRAIT.STOLON_1] = true;

traitsRequired[12] = false; 		
traitsRequired[TRAIT.DROUGHT_1] = true;

