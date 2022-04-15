// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrowRootRight(root){
	newRoot = instance_create_layer(root.x+SIZE, root.y,"Instances", o_RootSpreadRight); 
	
	root.nextRightRoot = newRoot; 
	
	newRoot.previousRoot = root;
	newRoot.nextLeftRoot = root;
	newRoot.parentPlant = root.parentPlant;
	newRoot.rootLevel = root.rootLevel;
	newRoot.rootX = root.rootX + 1; 
}