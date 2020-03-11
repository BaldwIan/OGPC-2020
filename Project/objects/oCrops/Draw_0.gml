if (!planting) { exit; }

// Grid info
var cs = cellSize;
var gx = (mouse_x div cs);
var gy = (mouse_y div cs);

// Check if anything is in the cell that the mouse is over
// Set default color as red for rectangle
var recCol = c_red;

if (ds_exists(ds_crops_instances, ds_type_grid))
{
	var cell = ds_crops_instances[# gx, gy];
	if (cell == 0)	// If there is no crop in the grid location
	{
		var layID = layer_get_id("T_Soil");
		var mapID = layer_tilemap_get_id(layID);
		var tilData = tilemap_get_at_pixel(mapID, mouse_x, mouse_y);
		if (tilData != 0) { recCol = c_green; }
	}
}

xx = gx * cs;
yy = gy * cs;

// Draw green or red rectangle depending on planting is possible or not (may be chnaged to a sprite later)
draw_rectangle_color(xx, yy, xx + cs, yy + cs, recCol, recCol, recCol, recCol, true);

// Draw the crop that is selected at mouse position in grid
draw_sprite(sCropsPicked, selectCrop, xx + (cs / 2), yy + (cs / 2));
