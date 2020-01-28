// To reference velocity array
var vector2_x = 0;
var vector2_y = 1;

#region get_input

isMoving = (abs(velocity_[vector2_x]) > 0.001) || (abs(velocity_[vector2_y]) > 0.001)

#endregion get_input

switch (state)
{
case object_states.idle:
	// Friction
	if (x_input = 0)
	{
		velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, .75);
	}
	if (y_input = 0)
	{
		velocity_[vector2_y] = lerp(velocity_[vector2_y], 0, .75);
	}
	
case object_states.wander:
	// --Horizontal Movement
	
	// clamp horiz left
	var leftVelClamp = -max_velocity_[vector2_x];
	// clamp horiz right
	var rightVelClamp = max_velocity_[vector2_x];
	velocity_[vector2_x] = clamp(velocity_[vector2_x] + x_input, leftVelClamp, rightVelClamp);
	
	// --Vertical Movement
	
	var upVelClamp = -max_velocity_[vector2_y];
	// clamp horiz right
	var downVelClamp = max_velocity_[vector2_y];
	velocity_[vector2_y] = clamp(velocity_[vector2_y] + y_input, upVelClamp, downVelClamp);

	break;
	
case object_states.stunned:
	// Knockback
	velocity_[vector2_x] += knockback_vel[vector2_x] / 2;
	velocity_[vector2_y] += knockback_vel[vector2_y] / 2;
	// Reduce knockaback
	knockback_vel[vector2_x] *= 0.9;
	knockback_vel[vector2_y] *= 0.9;
	
	break;
	
default:
	break;
}

// Move and contact tiles
moveAndContactTiles(collision_tile_map_id, 64, velocity_);
