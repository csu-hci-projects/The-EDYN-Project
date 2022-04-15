// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SelectedIDIsGameObject(){
	if (o_MouseManager.selectedID != undefined) {
		var selectedObject = o_MouseManager.selectedID.object_index;
		var gameObject = false; 
	
		if (selectedObject != undefined) {
			if (object_is_ancestor(selectedObject, o_Root)) {
				gameObject = true;	
			}
			if (object_is_ancestor(selectedObject, o_Plant))
				gameObject = true; 
		}
	
		return gameObject; 
		}
}