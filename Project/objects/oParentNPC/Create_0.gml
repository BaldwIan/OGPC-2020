// Movement Variables
velocity_		= [0, 0];
knockback_vel	= [0, 0];
max_velocity_	= [2, 2];
acceleration_	= 3;

// Get the tile_map_id for collisions
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

// State
state = object_states.idle;
dir_state = dir.east;

// Draw info
xFrame = 1;
yFrame = 0;

spriteBase	= -1;
spriteHair	= -1;
spriteFeet	= -1;
spriteLegs	= -1;
spriteTorso = -1;

xOffset = sprite_get_xoffset(mask_index);	// Offsets for player mask
yOffset = sprite_get_yoffset(mask_index);

// Start movement
alarm[1] = 1;
