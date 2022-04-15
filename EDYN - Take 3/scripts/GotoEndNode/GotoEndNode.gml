// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GotoEndNode(){
	
	endNode = o_Manager.playerPlant;
	
	while (endNode.nextNode != undefined) {
		endNode = endNode.nextNode;	
	}
	
	return endNode; 

}