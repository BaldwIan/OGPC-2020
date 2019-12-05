var HPBarWidth = sprite_get_width(sHealthBarFront) * (HP/maxHP);
var HPBarHeight = sprite_get_width(sHealthBarFront);

draw_sprite(sHealthBarBack, 0, 20, 20);

draw_sprite_part(sHealthBarFront, 0, 0, 0, HPBarWidth, HPBarHeight, 20, 20);