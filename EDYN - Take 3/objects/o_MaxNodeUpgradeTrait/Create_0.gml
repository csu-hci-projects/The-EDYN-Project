/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.NODENUM_1;
traitCost = 25;

traitText = "Plant Max Node Capacity: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait allows the plant to grow an extra node on top of the main " +
			"plant body. This essentially doubles the plant's total body size while " +
			"also providing an extra production queue."
			
leadToTraits[12] = false;
traitsRequired[12] = false; 	