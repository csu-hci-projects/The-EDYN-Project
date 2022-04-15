/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.RADREC_1;
traitCost = 25;

traitText = "Radiation Recyclying: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait allows radiation brought to the plant by the roots to be " +
			"consumed, providing a small amount of mutation points when processed. " + 
			"This does not prevent the plant from being damaged when at maximum radiation." 
			
leadToTraits[12] = false;
traitsRequired[12] = false; 	