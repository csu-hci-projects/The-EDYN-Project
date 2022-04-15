// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AssignTraitModifiers(traitNum, plant){

//enum TRAIT {
//	XYLEM_1 = 0,
//	PHLOEM_1 = 1,
//	BODYSIZE_1 = 2,
//	CONTREC_1 = 3, 
//	RADREC_1 = 4, 
//	ROOTSIZE_1 = 5, 
//	DROUGHT_1 = 6,
//	NODENUM_1 = 7,
//	FOOD_1 = 8,
//	RHIZOME_1 = 9,
//	STOLON_1 = 10,
//	PAPPUS_1 = 11,
//	FLOWER_1 = 12
//}


	switch(traitNum) {
		case 0:
		//Changed in resources generation (o_Root)
			break;
		case 1:
		//Changed in resources generation (o_Root)
			break;
		case 2:
		plant.maxSize = PLANT_MAX_BODYSIZE_START + 1;
			break;
		case 3:
		//Already Set (checked in Step)
			break;
		case 4:
		//Already Set (checked in Step)
			break;
		case 5:
		//Changed in o_Root
			break;
		case 6:
		plant.waterUseTimerMax = PLANT_TIMER_WATERUSE_START * 0.75;
			break;
		case 7:
		plant.maxNodes = PLANT_MAX_NODES_START + 1
			break;
		case 8:
		//Changed in o_Root
			break;
		case 9:
		//Already Set
			break;
		case 10:
		//Already Set
			break;
		case 11:
		//Already Set in germinate button 
			break;
		case 12:
		//Already Set in grow seed button
			break;
	}

}