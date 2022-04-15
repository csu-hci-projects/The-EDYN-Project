// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function growNewPlayerPlant(selectedTile){
	
	var newXCoord = selectedTile.x;
	var newYCoord = selectedTile.y; 

	
	newPlayerPlant = instance_create_layer(newXCoord + SIZE/2, newYCoord - SIZE/2, "Instances", o_ProtoPlant)
	
	endNode = GotoEndNode();
	endNode.prevNode.nextNode = undefined;
	instance_destroy(endNode); 
	
	TransferSeedToCurrentTraits(newPlayerPlant);
	TransferCurrentToCurrentTraits(newPlayerPlant); 
	
	o_Manager.playerPlant.playerPlant = false;
	o_Manager.playerPlant = newPlayerPlant;
	newPlayerPlant.playerPlant = true; 
	
	
	
	instance_destroy(o_SproutLocationHighlight); 
}