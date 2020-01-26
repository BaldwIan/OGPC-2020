var frames = 8;
var frameSize = 64;
var animSpd = 12;		// FPS

// Draw srites layerd
draw_sprite_part(spriteBase, 0, floor(xFrame) * frameSize, yFrame, frameSize, frameSize, x, y);
draw_sprite_part(spriteHair, 0, floor(xFrame) * frameSize, yFrame, frameSize, frameSize, x, y);
draw_sprite_part(spriteFeet, 0, floor(xFrame) * frameSize, yFrame, frameSize, frameSize, x, y);
draw_sprite_part(spriteLegs, 0, floor(xFrame) * frameSize, yFrame, frameSize, frameSize, x, y);
draw_sprite_part(spriteTorso, 0, floor(xFrame) * frameSize, yFrame, frameSize, frameSize, x, y);

// Inc frame for animation
if (xFrame < frames - 1)	{ xFrame += animSpd / room_speed; }
else						{ xFrame = 0;  }
