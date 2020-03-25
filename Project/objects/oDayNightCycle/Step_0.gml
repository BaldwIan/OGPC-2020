///@description mix colors/ reflection alpha

// Get key times
var time = global.time;
keyPrev = min(floor(time * numKeyTimes), numKeyTimes - 1);
keyNext = (keyPrev + 1) % numKeyTimes;

// get lerp amount
var lerpAmt = (time - keyPrev / numKeyTimes) * numKeyTimes;

// mix colors
colorMix		= [	lerp(color[keyPrev, 0], color[keyNext, 0], lerpAmt),
					lerp(color[keyPrev, 1], color[keyNext, 1], lerpAmt),
					lerp(color[keyPrev, 2], color[keyNext, 2], lerpAmt)];
			
conSatBrtMix	= [	lerp(conSatBrt[keyPrev, 0], conSatBrt[keyNext, 0], lerpAmt),
					lerp(conSatBrt[keyPrev, 1], conSatBrt[keyNext, 1], lerpAmt),
					lerp(conSatBrt[keyPrev, 2], conSatBrt[keyNext, 2], lerpAmt),
					lerp(conSatBrt[keyPrev, 3], conSatBrt[keyNext, 3], lerpAmt),
					lerp(conSatBrt[keyPrev, 4], conSatBrt[keyNext, 4], lerpAmt)];
					
switch (global.curWeather)
{
case weather_types.none:
	break;

case weather_types.rain:
	// Change colors to match rain
	colorMix[0]		-= colorMix[0] * (1.0 - 0.70) * global.weatherStrength;	// 70% red strength
	colorMix[1]		-= colorMix[1] * (1.0 - 0.85) * global.weatherStrength;	// 85% green strength
	//colorMix[2]		*= 1.0;

	conSatBrtMix[0] -= conSatBrtMix[0] * ( 1.0 - 0.75) * global.weatherStrength; // 75% contrast
	conSatBrtMix[1] -= conSatBrtMix[1] * ( 1.0 - 0.85) * global.weatherStrength; // 85% saturation
	conSatBrtMix[2] -= conSatBrtMix[2] * ( 1.0 - 0.80) * global.weatherStrength; // 80% brightness
	break;
	
default:
	break;
}

if (global.debug)
{
	colorMix[0]		-= colorMix[0] * (1.0 - 0.70) * global.weatherStrength;	// 70% red strength
	colorMix[1]		-= colorMix[1] * (1.0 - 0.85) * global.weatherStrength;	// 85% green strength
	//colorMix[2]		*= 1.0;

	conSatBrtMix[0] -= conSatBrtMix[0] * ( 1.0 - 0.75) * global.weatherStrength; // 75% contrast
	conSatBrtMix[1] -= conSatBrtMix[1] * ( 1.0 - 0.85) * global.weatherStrength; // 85% saturation
	conSatBrtMix[2] -= conSatBrtMix[2] * ( 1.0 - 0.80) * global.weatherStrength; // 80% brightness
}

// Reflection alpha - This may be added later (or not)


// Weather system
randomize();
if ((global.curWeather == weather_types.none) && (weatherCooldown <= 0))
{
	var makeWeatherEvent	= random(1.0);	// Random value for weather chance
	
	// Get if makeWeatherEvent is in range of percentage, make weather event happen
	if (makeWeatherEvent < global.weatherChance)	// Make weather event happen
	{
		// Set random weather length
		initWeatherTime	= irandom_range(global.weatherLengthMin, global.weatherLengthMax);
		weatherTime		= initWeatherTime;
		
		// Set random weather type
		var len = array_length_1d(global.weatherTypeArray) - 1;
		global.curWeather	= global.weatherTypeArray[irandom(len)];	// set current weather to a random weather type
	
		// DEBUG
		if (global.debug) { show_debug_message("Weather randomized"); }
	}
} else	// Weather happening
{
	if (weatherTime <= 0)		// If amount of time chosen for weather has passed
	{
		// Reset weather and start cooldown
		global.curWeather	= weather_types.none;
		if (weatherCooldown < 0) { weatherCooldown		= global.weatherCooldownTime; }
	} else
	{
		weatherTime--;
	}
	
	weatherCooldown--;
	
	// Weather strength will be 0 at the start, 1 in the middle, and 0 at the end of the weather time
	global.weatherStrength = min(1, 2 * sin(pi * weatherTime / initWeatherTime));
	show_debug_message("No weather happening");
}

// Update time according to day length
//global.dayTicks++;
if (global.dayTicks > global.dayLength)
{
	global.dayTicks = 0;
	incrementDay();
}
global.time = global.dayTicks / global.dayLength;