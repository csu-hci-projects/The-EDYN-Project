// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TransferSeedToCurrentTraits(newPlayerPlant){

	for (i = 0; i < NUM_TRAITS; i++) {
			if (o_Manager.playerPlant.seedTraits[i]) {
				newPlayerPlant.currentTraits[i] = true;	
			}
	}

}