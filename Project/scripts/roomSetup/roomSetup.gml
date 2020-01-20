/// @description script should only be run by manager after room has been started
var tile_map = layer_tilemap_get_id("CollisionTiles");

mp_grid_destroy(global.pathgrid);

// Standard size of grid cells make smaller to increase precision
var cell_width = 64;
var cell_height = 64;

// Get amount of cells per height or width
var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.pathgrid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height)

// Add the walls
for (var xx = 0; xx < room_width / cell_width; xx++)
{
	for (var yy = 0; yy < room_height / cell_height; yy++)
	{
		if (tilemap_get(tile_map, xx, yy))
		{
			mp_grid_add_cell(global.pathgrid, xx, yy);
		}
	}
}



//mp_grid_add_instances(global.pathgrid, oEnemySolid, true);
