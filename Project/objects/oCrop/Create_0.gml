// Dimensions of frame that may be changed later
frameWidth	= 32;
frameHeight	= 64;

cropType = 0;	// This will be the row of crop
daysOld = 0;
growthStage = 0;
growthStageDuration = 0;
maxGrowthStage = (sprite_get_width(sCrops) / frameWidth - 1);
fullyGrown = false;
sparkle = false;	// The sparkle effect may be replaced with a particle system later;

// Correction position for drawing
xx = x - (frameWidth / 2) + 2;
yy = y - frameHeight + 6;
