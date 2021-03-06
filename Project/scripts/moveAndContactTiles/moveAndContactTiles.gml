///@param tile_map_id
///@param tile_size
///@param velocity_array
var tile_map_id = argument0;
var tile_size = argument1;
var velocity = argument2;

// For the velocity array
var vector2_x = 0;
var vector2_y = 1;

// Move horizontally
x += velocity[vector2_x];

// backup
tile_right = false;
tile_left = false;
tile_bottom = false;
tile_top = false;

// Right collisions
if (velocity[vector2_x] > 0)
{
	var tile_right = tileCollideAtPoints(tile_map_id, [bbox_right - 1, bbox_top], [bbox_right - 1, bbox_bottom - 1]);
	if (tile_right)
	{
		x = bbox_right & ~(tile_size - 1);
		x -= bbox_right - x;
		velocity[@ vector2_x] = 0;
	}
}
else
{
	var tile_left = tileCollideAtPoints(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom - 1]);
	if (tile_left)
	{
		x = bbox_left & ~(tile_size - 1);
		x += tile_size + x - bbox_left;
		velocity[@ vector2_x] = 0;
	}
}


// Move vertically
y += velocity[vector2_y];

// Vertical Collisions
if (velocity[vector2_y] > 0)
{
	var tile_bottom = tileCollideAtPoints(tile_map_id, [bbox_left, bbox_bottom - 1], [bbox_right - 1, bbox_bottom - 1]);
	if (tile_bottom)
	{
		y = bbox_bottom & ~(tile_size - 1);
		y -= bbox_bottom - y;
		velocity[@ vector2_y] = 0;
	}
}
else
{
	var tile_top = tileCollideAtPoints(tile_map_id, [bbox_left, bbox_top], [bbox_right - 1, bbox_top]);
	if (tile_top)
	{
		y = bbox_top & ~(tile_size - 1);
		y += tile_size + y - bbox_top;
		velocity[@ vector2_y] = 0;
	}
}

if (tile_right) or (tile_left) or (tile_bottom) or (tile_top) return true;
