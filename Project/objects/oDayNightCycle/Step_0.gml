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


// Weather system
randomize();
if (global.curWeather == weather_types.none)
{
	if (global.debug) { show_debug_message("Randomizing weather"); }
	
	var weatherChanceScale	= 1.0;
	var makeWeatherEvent	= random(weatherChanceScale);
	
	if (makeWeatherEvent < (weatherChanceScale * global.weatherChance))	// Make weather event happen
	{
		var len = array_length_1d(global.weatherTypeArray) - 1;
		global.curWeather	= global.weatherTypeArray[irandom(len)];	// set current weather to a random weather type
	
		// DEBUG
		if (global.debug) { show_debug_message("Weather randomized"); }
	}
}


// Update time according to day length
global.dayTicks++;
if (global.dayTicks > global.dayLength)
{
	global.dayTicks = 0;
	incrementDay();
	
	// DEBUG
	if (global.debug)
	{
		global.curWeather = weather_types.none;
	}
}
global.time = global.dayTicks / global.dayLength;