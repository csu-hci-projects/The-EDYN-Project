// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetHighlightSprite(object){
	
	size = object.size; 
	
	if (object.object_index == o_ProtoPlant) {
		switch (size) {
			case 0: 
				return s_Proto0Highlight;
			case 1:
				return s_Proto1Highlight;
			case 2:
				return s_Proto2Highlight;
			case 3: 
				return s_Proto3Highlight;
			case 4: 
				return s_Proto4Highlight; 
			case 5:
				return s_Proto5Highlight; 
		}
	}
	
	if (object_is_ancestor(object.object_index, o_Root)) {
		if (object.object_index == o_Root.object_index) {
			switch (size) {
				case 0:
					return s_Root0Highlight;
				case 1:
					return s_Root1Highlight;
				case 2:
					return s_Root2Highlight;
				case 3:
					return s_Root3Highlight;
				case 4:
					return s_Root4Highlight;
				case 5:
					return s_Root5Highlight;
			}
		}
	}
	
	if (object.object_index == o_RootSpreadLeft) {
			switch (size) {
				case 0:
					return s_RootSpreadLeft0Highlight;
				case 1:
					return s_RootSpreadLeft1Highlight;
				case 2:
					return s_RootSpreadLeft2Highlight;
				case 3:
					return s_RootSpreadLeft3Highlight;
				case 4:
					return s_RootSpreadLeft4Highlight;
				case 5:
					return s_RootSpreadLeft5Highlight;
		}
	}
	
		if (object.object_index == o_RootSpreadRight) {
			switch (size) {
				case 0:
					return s_RootSpreadRight0Highlight;
				case 1:
					return s_RootSpreadRight1Highlight;
				case 2:
					return s_RootSpreadRight2Highlight;
				case 3:
					return s_RootSpreadRight3Highlight;
				case 4:
					return s_RootSpreadRight4Highlight;
				case 5:
					return s_RootSpreadRight5Highlight;
		}
	}
	
		if (object.object_index == o_ProtoPlantSeed) {
			return s_ProtoSeedHighlight;	
		} 
		
		if (object.object_index == o_ProtoPlantNode) {
			switch (size) {
				case 0:
					return s_ProtoNode0Highlight
				case 1:
					return s_ProtoNode1Highlight
				case 2:
					return s_ProtoNode2Highlight
				case 3:
					return s_ProtoNode3Highlight
				case 4:
					return s_ProtoNode4Highlight
			}
		}
		
		if (object.object_index == o_ProtoFlower) {
			return s_ProtoFlowerHighlight;
		}
		
}