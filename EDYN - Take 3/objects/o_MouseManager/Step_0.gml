/// @description Insert description here
// You can write your code in this editor

//Probably going to have to change this 'with all' stuff, but for now we'll use it. 

if (mouse_check_button_pressed(mb_left)) {
	if (MouseAtGameObject()) {
		if (objectClicked) {
			ClearSelected(); 	
		}
		HandleMouseClick(self); 
	}
	else if (MouseAtButtonObject()) {
		//DoNothing
	} 
	else if (MouseAtCreatureObject()) {
		if (objectClicked) {
			ClearSelected();	
		}
		HandleMouseClick(self); 	
	} 
	else if (MouseAtIconObject()) {
		if (objectClicked) {
			ClearSelected();
		}
		HandleMouseClick(self); 
	}
	else {
		if (objectClicked) {
			ClearSelected(); 
		}
	}
} 