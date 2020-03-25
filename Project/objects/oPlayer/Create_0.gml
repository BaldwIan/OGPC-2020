#region movement

// Movement Variables
velocity_		= [0, 0];
knockback_vel	= [0, 0];
max_velocity_	= [1.5, 1.5];
sprintSpd		= [2, 2];
acceleration_	= 3;

#endregion movement

#region attacking

attackType	= attack_types.none;

#endregion attacking

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
walkFrames		= 8;
attackFrames	= 9;
frames			= walkFrames;
walkAnimSpd				= 8;
primaryAttackAnimSpd	= 11;
alternateAttackAnimSpd	= 9;
animSpd					= walkAnimSpd;	// Animation fps

xFrame = 1;
yFrame = 0;

spriteBase		= sMale_base;
spriteHair		= sMale_hair1;
spriteHands		= sMale_hand_leather;
spriteHandheld	= sMale_handheld_ironspear;
spriteFeet		= sMale_feet_leatherboots;
spriteLegs		= sMale_pants_leather;
spriteTorso		= sMale_torso_leather;

xOffset = sprite_get_xoffset(mask_index);	// Offsets for player mask
yOffset = sprite_get_yoffset(mask_index);

#endregion draw_info

#region blend_shader

rPercent = shader_get_uniform(colorPercent, "redPercent");
gPercent = shader_get_uniform(colorPercent, "greenPercent");
bPercent = shader_get_uniform(colorPercent, "bluePercent");

percentrBase		= 209 / 255;
percentgBase		= 163 / 255;
percentbBase		= 164 / 255;

percentrHands		= 1.0;
percentgHands		= 1.0;
percentbHands		= 1.0;

percentrHandheld	= 1.0;
percentgHandheld	= 1.0;
percentbHandheld	= 1.0;

percentrFeet		= 1.0;
percentgFeet		= 1.0;
percentbFeet		= 1.0;

percentrLegs		= 1.0;
percentgLegs		= 1.0;
percentbLegs		= 1.0;

percentrTorso		= 1.0;
percentgTorso		= 1.0;
percentbTorso		= 1.0;

percentrHair		= 1.0;
percentgHair		= 1.0;
percentbHair		= 1.0;

#endregion blend_shader

#region particle_system

walkParticleSystem = instance_create_layer(x, y, "Instances", oPartEmitter);

with (walkParticleSystem)
{
	
	// Adjust depth to be behind player
	depth = other.depth + 1;
	
	// Make particles follow player
	followObj = other.id;
	
	particle = global.particleDirt;
	
	#region emitter_info
	
	// --Emitter info - default values
	regionW				= 32;
	regionH				= 8;
	regionOffsetX		= 0;
	regionOffsetY		= 0;

	xMin				= x - (regionW / 2) + regionOffsetX;
	xMax				= x + (regionW / 2) + regionOffsetX;
	yMin				= y - (regionH / 2) + regionOffsetY;
	yMax				= y + (regionH / 2) + regionOffsetY;
	
	streamMode = false;
	
	#endregion emitter_info
}

#endregion particle_system