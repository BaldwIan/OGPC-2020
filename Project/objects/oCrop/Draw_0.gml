draw_sprite_part(
	sCrops, 0, growthStage * frameWidth, cropType * frameHeight, 
	frameWidth, frameHeight, xx, yy
);

// Draw sparkle if fully grown
if (sparkle >= 0)
{
	draw_sprite(sSparkle, sparkle, x + 2, y - 10);
	sparkle += 0.1;
	if (sparkle >= sprite_get_number(sSparkle))
	{
		sparkle = -1;
		alarm[1] = random_range(3, 4) * room_speed;
	}
}

if (global.debug)
{
	draw_text(x, y - 75, "Growth stage: " + string(growthStage));
	draw_text(x, y - 50, "Days Old: " + string(daysOld));
	//draw_text(x, y - 25, "Growth stage: " + growthStage);
}
