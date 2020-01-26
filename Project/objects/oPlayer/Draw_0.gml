var frames = 8;
var frameSize = 64;
var animSpd = 12;		// FPS

// Change y frame based off of direction state

if		(dir_state == dir.north) { yFrame = 0; }
else if	(dir_state == dir.south) { yFrame = 2; }
else if (dir_state == dir.north_east || dir_state == dir.east || dir_state == dir.south_east) { yFrame = 3; }	// Check all east type directions because no sprite are made for diagonal directions
else	{ yFrame = 1; }

if (!isMoving) { xFrame = 0; }	// Draw first frame (idle frame) if not moving

// Draw srites layerd
draw_sprite_part(spriteBase,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, x, y);
draw_sprite_part(spriteHair,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, x, y);
draw_sprite_part(spriteFeet,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, x, y);
draw_sprite_part(spriteLegs,  0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, x, y);
draw_sprite_part(spriteTorso, 0, floor(xFrame) * frameSize, yFrame * frameSize, frameSize, frameSize, x, y);

// Inc frame for animation
if (xFrame < frames - 1)	{ xFrame += animSpd / room_speed; }
else						{ xFrame = 1;  }


// DEBUG
if (global.debug)
{
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
}