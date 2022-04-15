// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckRootIsSpreadRoot(){
	if (o_MouseManager.selectedID.object_index == o_RootSpreadLeft 
	|| o_MouseManager.selectedID.object_index == o_RootSpreadRight) {
		return true;	
	} else {
		return false; 
	}	
}