#region movement

// Movement Variables
velocity_		= [0, 0];
knockback_vel	= [0, 0];
max_velocity_	= [1.5, 1.5];
sprintSpd		= [2, 2];
acceleration_	= 3;

#endregion movement

#region shooting

// Shooting
defaultShootCooldown = room_speed * 0.5;
shootCooldown = defaultShootCooldown;

#endregion shooting

#region collision_layer

// Get the tile_map_id for collisions
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

#endregion collosion_layer

#region health_system

// Health system
HP = 100;
maxHP = 100;

#endregion health_system

#region state

// State
state = object_states.neutral;
dir_state = dir.east;

isMoving = false;

#endregion state

#region draw_info

// Draw info
xFrame = 1;
yFrame = 0;

spriteBase	= sMale_base;
spriteHair	= sMale_hair1;
spriteHands	= sMale_hand_leather;
spriteFeet	= sMale_feet_leatherboots;
spriteLegs	= sInvis;
spriteTorso = sInvis;

xOffset = sprite_get_xoffset(mask_index);	// Offsets for player mask
yOffset = sprite_get_yoffset(mask_index);

#endregion draw_info

#region blend_shader

rPercent = shader_get_uniform(colorPercent, "redPercent");
gPercent = shader_get_uniform(colorPercent, "greenPercent");
bPercent = shader_get_uniform(colorPercent, "bluePercent");

percentrBase	= 209 / 255;
percentgBase	= 163 / 255;
percentbBase	= 164 / 255;

percentrFeet	= 1.0;
percentgFeet	= 1.0;
percentbFeet	= 1.0;

percentrLegs	= 1.0;
percentgLegs	= 1.0;
percentbLegs	= 1.0;

percentrTorso	= 1.0;
percentgTorso	= 1.0;
percentbTorso	= 1.0;

percentrHair	= 1.0;
percentgHair	= 1.0;
percentbHair	= 1.0;

#endregion blend_shader
