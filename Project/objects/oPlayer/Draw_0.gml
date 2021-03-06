var frameSize = 64;

// Corrected position for offset
var xx = x - xOffset;
var yy = y - yOffset;

switch (state)
{
case object_states.neutral:
	// Change y frame based off of direction state
	if		(dir_state == dir.north) { yFrame = 0; }
	else if	(dir_state == dir.south) { yFrame = 2; }
	else if (dir_state == dir.north_east || dir_state == dir.east || dir_state == dir.south_east) { yFrame = 3; }	// Check all east type directions because no sprite are made for diagonal directions
	else	{ yFrame = 1; }

	if (!isMoving) { xFrame = 0; }	// Draw first frame (idle frame) if not moving
	
	// Inc frame for animation
	if (xFrame + (animSpd / room_speed) < frames)	{ xFrame += animSpd / room_speed; }
	else						{ xFrame = 1;  }

	break;
	
case object_states.attack:
	
	if (xFrame + (animSpd / room_speed) < frames)	{ xFrame += animSpd / room_speed; }
	
	break;
}

// Base
shader_set(colorPercent);
shader_set_uniform_f(rPercent, percentrBase);
shader_set_uniform_f(gPercent, percentgBase);
shader_set_uniform_f(bPercent, percentbBase);

if (spriteBase  != -1) draw_sprite_part(spriteBase,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

shader_reset();

// Hands
shader_set(colorPercent);
shader_set_uniform_f(rPercent, percentrHands);
shader_set_uniform_f(gPercent, percentgHands);
shader_set_uniform_f(bPercent, percentbHands);

if (spriteFeet  != -1) draw_sprite_part(spriteHands,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

shader_reset();

// Handheld
shader_set(colorPercent);
shader_set_uniform_f(rPercent, percentrHandheld);
shader_set_uniform_f(gPercent, percentgHandheld);
shader_set_uniform_f(bPercent, percentbHandheld);

if (spriteFeet  != -1) draw_sprite_part(spriteHandheld,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

shader_reset();

// Feet
shader_set(colorPercent);
shader_set_uniform_f(rPercent, percentrFeet);
shader_set_uniform_f(gPercent, percentgFeet);
shader_set_uniform_f(bPercent, percentbFeet);

if (spriteFeet  != -1) draw_sprite_part(spriteFeet,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

shader_reset();

// Legs
shader_set(colorPercent);
shader_set_uniform_f(rPercent, percentrLegs);
shader_set_uniform_f(gPercent, percentgLegs);
shader_set_uniform_f(bPercent, percentbLegs);

if (spriteLegs  != -1) draw_sprite_part(spriteLegs,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

shader_reset();

// Torso
shader_set(colorPercent);
shader_set_uniform_f(rPercent, percentrTorso);
shader_set_uniform_f(gPercent, percentgTorso);
shader_set_uniform_f(bPercent, percentbTorso);

if (spriteTorso != -1) draw_sprite_part(spriteTorso, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

shader_reset();

// Hair
shader_set(colorPercent);
shader_set_uniform_f(rPercent, percentrHair);
shader_set_uniform_f(gPercent, percentgHair);
shader_set_uniform_f(bPercent, percentbHair);

if (spriteHair  != -1) draw_sprite_part(spriteHair,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, xx, yy);

shader_reset();

// DEBUG
if (global.debug)
{
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
	draw_text(x, y - 25, "Crop instances in room: " + string(instance_number(oCrop)));
}
