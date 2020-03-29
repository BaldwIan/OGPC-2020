// This object is to manage the day night cycle and weather system

// --Weather
weatherCooldown		= 0;	// current time (frames) remaining till another weather event can happen
weatherTime			= 0;	// Amount of time that weather will last - chosen randomly every time a weather event starts

// Will draw whole surface with day night shader
application_surface_draw_enable(false);

// --Shader
shader			= shdDayNight;
uCol			= shader_get_uniform(shader, "col");
uConSatBrt		= shader_get_uniform(shader, "conSatBrt");	// contrast, saturation, brightness

// --Color vars
colorMix = -1;
color[0, 0] = undefined;

conSatBrtMix = -1;
conSatBrt[0, 0] = undefined;

keyPrev = -1;
keyNext = -1;

// --Key Times

// Args:	R   G    B    con  sat  brt   popS  popT
addKeyTime(010, 070, 200, 0.7, 0.6, 0.00, 2.50, 0.67);	// midnight
addKeyTime(010, 080, 220, 0.8, 0.9, 0.00, 2.00, 0.75);	// late night
addKeyTime(240, 180, 063, 1.1, 1.1, 0.10, 0.80, 0.80);	// dawn
addKeyTime(225, 200, 190, 1.1, 1.1, 0.12, 0.00, 1.00);	// morning
addKeyTime(250, 250, 230, 1.3, 0.9, 0.15, 0.00, 1.00);	// noon
addKeyTime(230, 240, 200, 1.4, 1.1, 0.15, 0.00, 1.00);	// late afternoon
addKeyTime(215, 150, 165, 1.4, 1.3, 0.20, 0.80, 0.80);	// dusk
addKeyTime(010, 080, 220, 0.9, 0.9, 0.00, 0.20, 0.75);	// early night

numKeyTimes = array_height_2d(color);

// --Particles
weatherParticles	= instance_create_layer(0, 0, "Instances", oPartEmitter);
with (weatherParticles)
{
	depth	= -10000;
				
	// Make particles follow player
	followObj = oCamera;
	
	particle = global.particleRain;
	
	#region emitter_info
	
	// --Emitter info - default values
	burstAmt = 3;
				
	regionW				= global.cwidth;
	regionH				= 50;
	regionOffsetX		= 0;
	regionOffsetY		= 0;

	xMin				= x - (regionW / 2) + regionOffsetX;
	xMax				= x + (regionW / 2) + regionOffsetX;
	yMin				= y - (regionH / 2) + regionOffsetY;
	yMax				= y + (regionH / 2) + regionOffsetY;
	
	streamMode = false;
	
	#endregion emitter_info
}

// --Water Reflection
//This may or may not be set up
