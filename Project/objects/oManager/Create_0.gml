// Set up all initial globals
declareGlobals();

// Item Array (arrayname[number] = ["name", damage, soundeffect];)
item_stat[0] = ["Unequipped", 0, sndUnequipped];
item_stat[1] = ["Wooden Sword", 1, sndSwordSwing];



// GUI dimensions
guiWidth = display_get_width();
guiHeight = display_get_height();

// Room transition stuff
blackAlpha = 0;	// For black fade effect

spawnRoom = -1;
doTransition = false;

spawnX = 0;
spawnY = 0;
