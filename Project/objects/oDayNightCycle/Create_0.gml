// This object is to manage the day night cycle and weather system

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
addKeyTime(250, 250, 190, 1.1, 1.1, 0.12, 0.00, 1.00);	// morning
addKeyTime(255, 250, 230, 1.3, 0.9, 0.15, 0.00, 1.00);	// noon
addKeyTime(250, 240, 200, 1.4, 1.1, 0.15, 0.00, 1.00);	// late afternoon
addKeyTime(215, 150, 165, 1.4, 1.3, 0.20, 0.80, 0.80);	// dusk
addKeyTime(010, 080, 220, 0.9, 0.9, 0.00, 0.20, 0.75);	// early night

numKeyTimes = array_height_2d(color);

// --Water Reflection
//This may or may not be set up
