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
addKeyTime(250, 230, 200);	// dawn
addKeyTime(250, 240, 200);	// later afternoon

numKeyTimes = array_height_2d(color);

// --Water Reflection
//This may or may not be set up
