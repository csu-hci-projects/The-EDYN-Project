// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrowFlower(){

	endNode = GotoEndNode(); 

	newFlower = instance_create_layer(endNode.x, endNode.y-SIZE, "Instances", o_ProtoFlower); 
	newFlower.parentPlant = o_Manager.playerPlant; 
	o_Manager.playerPlant.hasFlower = true; 
	
	endNode.nextNode = newFlower; 
	newFlower.prevNode = endNode; 

}