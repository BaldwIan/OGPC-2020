

if (global.debug)
{
	if (instance_exists(oCrop))
	{
		with(oCrop) show_debug_message(maxGrowthStage - growthStage);
	}
	
	// Draw plant grid
	var cs = oCrops.cellSize;
	
	// Change alpha to make lines less harsh
	draw_set_alpha(0.5);
	
	// Draw Vert lines
	var xx = room_width div cs;
	for (i = 0; i < xx; i++)
	{
		draw_line_color(i * cs, 0, i * cs, room_height, c_white, c_white);
	}
	
	// Draw Horiz lines
	var yy = room_height div cs;
	for (i = 0; i < yy; i++)
	{
		draw_line_color(0, i * cs, room_width, i * cs, c_white, c_white);
	}
	
	draw_set_alpha(1);
}
