// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HighlightObject(object){
	if (object.highlightRising) {
		object.highlightTimer++;	
	} else {
		object.highlightTimer--;	
	}
	draw_sprite(GetHighlightSprite(object), floor(object.highlightTimer/10), object.x, object.y); 
	
	if (object.highlightTimer == object.highlightTimerMax) {
		object.highlightRising = false;	
	} 
	if (object.highlightTimer == object.highlightTimerMax/2) {
		object.highlightRising = true; 	
	}


}