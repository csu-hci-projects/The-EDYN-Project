/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.STOLON_1;
traitCost = 70;

traitText = "Plant Stolon: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait allows for the plant to grow a Stolon to the left and right." +
			"A stolon provides a fully additional plant body to be grown without the " +
			"need for germination. A stolon may not grow an additional stolon. "
			
leadToTraits[12] = false;
traitsRequired[12] = false;
traitsRequired[TRAIT.FLOWER_1] = true; 