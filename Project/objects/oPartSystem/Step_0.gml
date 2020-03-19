if (streamMode)
{
	exit;
} else if (bursting)	// Burst mode
{
	part_emitter_burst(ps, emitter, particle, burstAmt);
	//bursting = false;	// Setting this to false let's the controlling object emit burst on command
}

if (followObj != noone && instance_exists(followObj))
{
	x = followObj.x;
	y = followObj.y;
	
	// Set region again
	xMin				= x - (regionW / 2) + regionOffsetX;
	xMax				= x + (regionW / 2) + regionOffsetX;
	yMin				= y - (regionH / 2) + regionOffsetY;
	yMax				= y + (regionH / 2) + regionOffsetY;
	
	part_emitter_region(ps, particle, xMin, xMax, yMin, yMax, emitterShape, emitterDistribution);
}