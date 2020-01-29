// Draw plant grid
var cs = oCrops.cellSize;

if (global.debug)
{
	var r = room_width div cs;
	for (i = 0; i < r; i++)
	{
		draw_line_color(i * cs, 0, i * cs, room_height, c_white, c_white);
	}
}
