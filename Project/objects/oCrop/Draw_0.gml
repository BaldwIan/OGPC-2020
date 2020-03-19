draw_sprite_part(
	sCrops, 0, growthStage * frameWidth, cropType * frameHeight, 
	frameWidth, frameHeight, xx, yy
);

if (global.debug)
{
	draw_text(x, y - 75, "Growth stage: " + string(growthStage));
	draw_text(x, y - 50, "Days Old: " + string(daysOld));
	//draw_text(x, y - 25, "Growth stage: " + growthStage);
}
