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

// Reflection alpha
//Will be added later maybe
