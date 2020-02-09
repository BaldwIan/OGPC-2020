// Will draw whole surface with day night shader
application_surface_draw_enable(false);

// Shader
shader = shdDayNight;
uCol = shader_get_uniform(shader, "col");

// Color vars
colorMix = -1;
color[0, 0] = undefined;
keyPrev = -1;
keyNext = -1;
