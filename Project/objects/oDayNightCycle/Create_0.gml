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

// Args:	R   G    B    con  sat  brt		popS	popT
addKeyTime(010, 070, 200, 0.7, 0.6, 0.00);	// midnight
addKeyTime(010, 080, 220, 0.8, 0.9, 0.00);	// late night
addKeyTime(250, 230, 200, 1.1, 1.3, 0.05);	// dawn
addKeyTime(245, 235, 190, 1.1, 1.1, 0.10);	// morning
addKeyTime(255, 250, 230, 1.3, 0.9, 0.15);	// noon
addKeyTime(250, 240, 200, 1.4, 1.1, 0.15);	// late afternoon
addKeyTime(215, 150, 165, 1.4, 1.3, 0.20);	// dusk
addKeyTime(010, 080, 220, 0.9, 0.9, 0.00);	// early night

numKeyTimes = array_height_2d(color);

// --Water Reflection
//This may or may not be set up
