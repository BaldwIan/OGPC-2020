// Movement Variables
velocity_		= [0, 0];
knockback_vel	= [0, 0];
max_velocity_	= [4, 4];
sprintSpd		= [2, 2];
acceleration_	= 3;

// Shooting
defaultShootCooldown = room_speed *1;
shootCooldown = defaultShootCooldown;

// Get the tile_map_id for collisions
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

// Health system
HP = 100;
maxHP = 100;

// State
state = object_states.neutral;
dir_state = dir.east;

isMoving = false;

// Draw info
xFrame = 1;
yFrame = 0;

spriteBase	= male_base_light;
spriteHair	= male_hair_brunette;
spriteFeet	= male_shoes_black;
spriteLegs	= male_pants_white;
spriteTorso = male_shirt_teal;
