/// @description Insert description here
// You can write your code in this editor

transferTimerMax = PLANT_TIMER_XYLEMTRANSFER_MAX;


transferTimer = transferTimerMax; 

destructionTimerMax = 30;
destructionTimer = destructionTimerMax; 

parentRoot = undefined; 
startingParent = undefined; 
resourcesAdded = false; 
speedRatio = SIZE; 

baseX = self.x;
baseY = self.y - 2; 

resourceID = undefined; 

highlightTimerMax = HIGHLIGHT_TIMER_MAX;
highlightTimer = highlightTimerMax;
highlightRising = false; 
