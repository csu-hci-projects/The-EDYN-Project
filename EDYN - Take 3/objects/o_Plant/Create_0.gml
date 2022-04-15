/// @description Attribute/Resource/Root ini
// You can write your code in this editor

playerPlant = false; 
image_speed = 0; 
selected = false; 
plantType = "ProtoPlant";

plantInfoText = "";


positionX = floor(self.x/SIZE);
positionY = floor(self.y/SIZE); 

//Used for determining the 'breathing' effect of the highlight outline
highlightTimerMax = HIGHLIGHT_TIMER_MAX;
highlightTimer = highlightTimerMax;
highlightRising = false; 

//Root Stuff
rootHead = instance_create_layer(self.x, self.y+SIZE, "Instances", o_RootStruct); 
rootHead.parentPlant = self; 
rootHead.nextUpRoot = self; 
maxRootSpread = 2;
maxRootDepth = 2; 

//Attributes
size = 0; 
maxSize = PLANT_MAX_BODYSIZE_START; 
maxNodes = PLANT_MAX_NODES_START; 
curNodes = 0; 
germinateDistance = 4; 
hasFlower = false; 

//Linked List
nextNode = undefined;


//Resources
curNutrients = 20;
nutrientsMax = RESOURCE_MAX_LEVEL_0;

curWater = 10;
waterMax = RESOURCE_MAX_LEVEL_0; 
waterUseTimerMax = PLANT_TIMER_WATERUSE_START;
waterUseTimer = waterUseTimerMax; 

curSunlight = 20;
sunlightMax = RESOURCE_MAX_LEVEL_0 * (size + 1); 
sunlightGenTimer = 0;
sunlightGenTimerMax = RESOURCE_SUN_GENERATE_TIMER;

curRadiation = 0;
radiationMax = RESOURCE_MAX_LEVEL_0;
radRecTimerMax = PLANT_TIMER_REC_MAX;
radRecTimer = radRecTimerMax; 

curContamination = 0
contaminationMax = RESOURCE_MAX_LEVEL_0;
conRecTimerMax = PLANT_TIMER_REC_MAX;
conRecTimer = conRecTimerMax; 

plantMaxHealth = PLANT_MAX_HEALTH;
curPlantHealth = plantMaxHealth; 

curMutationPoints = 0;
mutationPointsMax = 100; 

curPlantFood = 5; 
plantFoodMax = 5; 

//TRAITS IN SEED
hasSeed = false; 
currentSeed = undefined; 
seedTraits[12] = false; 
currentSeedMutationPoints = 0; 

//EVOLVED TRAITS
currentTraits[12] = false; 
traitsSet = false; 

//currentTraits[TRAIT.NODENUM_1] = true; 
//currentTraits[TRAIT.FLOWER_1] = true; 


sc_SetCollision(positionX, positionY);
sc_SetObjectInTile(positionX, positionY, self);




