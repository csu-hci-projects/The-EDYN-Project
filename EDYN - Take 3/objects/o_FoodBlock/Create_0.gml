/// @description Insert description here
// You can write your code in this editor

transferTimerMax = PLANT_TIMER_XYLEMTRANSFER_MAX
transferTimer = transferTimerMax; 

destructionTimerMax = 300;
destructionTimer = destructionTimerMax; 

parentRoot = undefined; 
startingParent = undefined; 
resourcesAdded = false; 
speedRatio = SIZE; 

baseX = self.x;
baseY = self.y - 2; 

targetX = undefined;
targetY = undefined; 

resourceID = "Food"; 

highlightTimerMax = HIGHLIGHT_TIMER_MAX;
highlightTimer = highlightTimerMax;
highlightRising = false; 
