direction = point_direction(x, y, oPlayer.x, oPlayer.y);

x += knockback_vel[0];
y += knockback_vel[1];

knockback_vel[0] *= 0.9;
knockback_vel[1] *= 0.9;
