/// @description Insert description here
// You can write your code in this editor
image_speed = 0; 

//Attributes
size = 0; 
maxSize = PLANT_MAX_ROOTSIZE_START; 
selected = false; 

rootType = "root"

rootInfoText = ""

if (self.object_index == o_RootStruct) {
	rootType = "Down Root"	
} else if (self.object_index == o_RootSpreadLeft) {
	rootType = "Left Root"	
} else if (self.object_index == o_RootSpreadRight) {
	rootType = "Right Root" 	
}

curXylemBlocks = 0;
xylemMax = PLANT_MAX_XYLEMCAP_START; 
curPhloemBlocks = 0;
phloemMax = PLANT_MAX_PHLOEMCAP_START; 

if (self.object_index == o_RootStruct) {
	xylemMax = 10;
	phloemMax = 10; 
}

positionX = floor(self.x/SIZE);
positionY = floor(self.y/SIZE); 

//Used for determining the 'breathing' effect of the highlight outline
highlightTimerMax = HIGHLIGHT_TIMER_MAX;
highlightTimer = highlightTimerMax;
highlightRising = false; 

//Linked List Stuff
parentPlant = undefined;

nextDownRoot = undefined;
nextUpRoot = undefined;
nextLeftRoot = undefined;
nextRightRoot = undefined; 

previousRoot = undefined; 

//Resource Generation 
resourceTimerMax = RESOURCE_TIMER_MAX;
resourceTimer = resourceTimerMax;

//Food Request
rootCurFood = 1;
rootMaxFood = size + 1;
foodConsumeTimerMax = PLANT_TIMER_FOODUSE_START;
foodConsumeTimer = foodConsumeTimerMax; 
foodRequested = false; 



//Tile Info
tileNutrients = getTileNutrients(self);
tileWater = getTileWater(self);
tileRad = getTileRadiation(self);
tileCon = getTileContamination(self);
tileType = getTileType(self); 

if (tileType == TILE_ID.SOIL_1) {
	resourceTimerMax = RESOURCE_TIMER_MAX;
	resourceTimer = resourceTimerMax;
} 
else if (tileType == TILE_ID.SOIL_2) {
	resourceTimerMax = RESOURCE_TIMER_MAX * 0.85;
	resourceTimer = resourceTimerMax;	
}
else if (tileType == TILE_ID.SOIL_3) {
	resourceTimerMax = RESOURCE_TIMER_MAX * 0.70;
	resourceTimer = resourceTimerMax;	
}


//Root ID 
rootLevel = 0; 
rootX = 0; 

sc_SetCollision(positionX, positionY);
sc_SetObjectInTile(positionX, positionY, self);
