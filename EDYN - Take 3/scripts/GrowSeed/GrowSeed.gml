// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrowSeed(){
	
	if (o_Manager.playerPlant.hasFlower) {
		o_Manager.playerPlant.hasFlower = false; 
		endNode = GotoEndNode(); 
		endNode.prevNode.nextNode = undefined; 
		instance_destroy(endNode); 
	}
	
	endNode = GotoEndNode(); 

	newSeed = instance_create_layer(endNode.x, endNode.y-SIZE, "Instances", o_ProtoPlantSeed); 
	newSeed.parentPlant = o_Manager.playerPlant; 
	o_Manager.playerPlant.currentSeed = newSeed; 
	
	endNode.nextNode = newSeed; 
	newSeed.prevNode = endNode; 
	o_Manager.playerPlant.hasSeed = true; 

}