// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckRootIsDownRoot(){
	if (o_MouseManager.selectedID.object_index == o_RootStruct.object_index) {
		return true;	
	} else {
		return false; 	
	}

}