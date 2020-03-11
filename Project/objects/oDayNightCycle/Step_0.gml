///@description mix colors/ reflection alpha

// Get key times
var time = global.time;
keyPrev = min(floor(time * numKeyTimes), numKeyTimes - 1);
keyNext = (keyPrev + 1) % numKeyTimes;

// get lerp amount
var lerpAmt = (time - keyPrev / numKeyTimes) * numKeyTimes;

// mix colors
colorMix = [lerp(color[keyPrev, 0], color[keyNext, 0], lerpAmt),
			lerp(color[keyPrev, 1], color[keyNext, 1], lerpAmt),
			lerp(color[keyPrev, 2], color[keyNext, 2], lerpAmt)];
			
conSatBrtMix = [lerp(conSatBrt[keyPrev, 0], conSatBrt[keyNext, 0], lerpAmt),
			lerp(conSatBrt[keyPrev, 1], conSatBrt[keyNext, 1], lerpAmt),
			lerp(conSatBrt[keyPrev, 2], conSatBrt[keyNext, 2], lerpAmt),
			lerp(conSatBrt[keyPrev, 3], conSatBrt[keyNext, 3], lerpAmt),
			lerp(conSatBrt[keyPrev, 4], conSatBrt[keyNext, 4], lerpAmt)];

// Reflection alpha - This may be added later (or not)


// Update time according to day length
global.dayTicks++;
if (global.dayTicks > global.dayLength)
{
	global.dayTicks = 0;
	global.daysPassed++;
}
global.time = global.dayTicks / global.dayLength;