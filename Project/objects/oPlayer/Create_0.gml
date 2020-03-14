// Movement Variables
velocity_		= [0, 0];
knockback_vel	= [0, 0];
max_velocity_	= [2, 2];
sprintSpd		= [2, 2];
acceleration_	= 3;

// Shooting
defaultShootCooldown = room_speed * 0.5;
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

spriteBase	= male_base;
spriteHair	= male_base;
spriteFeet	= male_base;
spriteLegs	= male_base;
spriteTorso = male_base;

xOffset = sprite_get_xoffset(mask_index);	// Offsets for player mask
yOffset = sprite_get_yoffset(mask_index);

rPercent = shader_get_uniform(colorPercent, "redPercent");
gPercent = shader_get_uniform(colorPercent, "greenPercent");
bPercent = shader_get_uniform(colorPercent, "bluePercent");

percentrBase = random(1.0);
percentgBase = random(1.0);
percentbBase = random(1.0);

percentrFeet = random(1.0);
percentgFeet = random(1.0);
percentbFeet = random(1.0);

percentrLegs = random(1.0);
percentgLegs = random(1.0);
percentbLegs = random(1.0);

percentrTorso = random(1.0);
percentgTorso = random(1.0);
percentbTorso= random(1.0);

percentrHair = random(1.0);
percentgHair = random(1.0);
percentbHair = random(1.0);

