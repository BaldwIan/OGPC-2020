// Will draw whole surface with day night shader
application_surface_draw_enable(false);

// --Shader
shader = shdDayNight;
uCol = shader_get_uniform(shader, "col");

// --Color vars
colorMix = -1;
color[0, 0] = undefined;
keyPrev = -1;
keyNext = -1;

// --Key Times

// Args:	R	G	B	con		sat		brt		popS	popT
addKeyTime(010, 070, 200);	// midnight
addKeyTime(010, 080, 220);	// late night
addKeyTime(250, 230, 200);	// dawn
addKeyTime(245, 235, 190);	// morning
addKeyTime(255, 250, 230);	// noon
addKeyTime(250, 240, 200);	// late afternoon
addKeyTime(215, 150, 165);	// dusk
addKeyTime(010, 080, 220);	// early night

numKeyTimes = array_height_2d(color);

// --Water Reflection
//This may or may not be set up
