// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ClearSelected(){
		o_MouseManager.selectedID.selected = false;
		o_MouseManager.selectedID.highlightTimer = selectedID.highlightTimerMax; 
		o_MouseManager.selectedID = undefined; 
		o_MouseManager.objectClicked = false; 
}