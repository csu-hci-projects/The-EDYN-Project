// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addNode(){
	
	endNode = GotoEndNode();
	
	newNode = instance_create_layer(endNode.x, endNode.y-SIZE, "Instances", o_ProtoPlantNode);
	
	newNode.parentPlant = o_Manager.playerPlant;
	o_Manager.playerPlant.curNodes++; 
	o_Manager.playerPlant.germinateDistance = (o_Manager.playerPlant.curNodes + 1) * 2; 
	
	newNode.prevNode = endNode;
	endNode.nextNode = newNode; 
	

}