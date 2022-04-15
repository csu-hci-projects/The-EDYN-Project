/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

traitID = TRAIT.PHLOEM_1;
traitCost = 25;

traitText = "Phloem Flow Upgrade: \n" +
			"Trait Cost: " + string(traitCost) + "\n" +
			"Description: \n" + 
			"This trait decreases the viscosity of the fluid in your Phloem without " +
			"decreasing it's overall carrying capacity. The result is all resources " + 
			"carried from the plant to the roots are done so faster."
			
leadToTraits[12] = false;
traitsRequired[12] = false; 	