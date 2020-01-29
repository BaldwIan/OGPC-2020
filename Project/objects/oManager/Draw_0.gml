

if (global.debug)
{
	// Draw plant grid
	var cs = oCrops.cellSize;

	// Draw Horiz lines
	var xx = room_width div cs;
	for (i = 0; i < xx; i++)
	{
		draw_line_color(i * cs, 0, i * cs, room_height, c_white, c_white);
	}
	
	// Draw Vert lines
	var yy = room_height div cs;
	for (i = 0; i < yy; i++)
	{
		draw_line_color(0, i * cs, room_width, i * cs, c_white, c_white);
	}
}
