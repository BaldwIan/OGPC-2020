// State
state = object_states.neutral;
dir_state = dir.east;

isMoving = false;

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
