// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrowRootDownwards(root){
	newRoot = instance_create_layer(root.x, root.y+SIZE,"Instances", o_RootStruct); 
	
	root.nextDownRoot = newRoot; 
	
	newRoot.nextUpRoot = o_MouseManager.selectedID;
	newRoot.parentPlant = o_MouseManager.selectedID.parentPlant;
	newRoot.rootLevel = root.rootLevel + 1; 
	
}