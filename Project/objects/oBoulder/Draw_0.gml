draw_set_alpha(0.3);
draw_ellipse_color(x-sprite_width/2, y+115, x+sprite_width/2, y+8, c_black, c_black, false);
draw_set_alpha(1);

//if (shake==false)
//{
//		var ran_x = random_range(-3,3);
//		var ran_y = random_range(-3,3);
//		draw_sprite_ext(sprite_index, image_index, x+ran_x, y+ran_y, image_xscale, image_yscale, 0, c_white, 1);
//}
//else {
	draw_self();
//}
