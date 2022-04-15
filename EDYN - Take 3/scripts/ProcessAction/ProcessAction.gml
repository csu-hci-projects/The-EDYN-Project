// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ProcessAction(task){
	
	
	
	if (o_GuiManager.progressQueued != true) {
		o_GuiManager.progressQueued = true;
		o_GuiManager.curTask = string(task);
		o_GuiManager.curSelected = o_MouseManager.selectedID; 
	}

}