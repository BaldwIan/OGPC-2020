shader_set(shader);

shader_set_uniform_f_array(uCol, colorMix);
draw_surface(0, 0, application_surface);

shader_reset();
