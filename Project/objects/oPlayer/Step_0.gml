#region get_input

// Get movement input
var x_input = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * acceleration_;
var y_input = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * acceleration_;

// Shoot input
var shooting = false;
if (mouse_check_button(mb_left)) shooting = true;

#endregion get_input

switch (state)
{
case object_states.neutral:
	if (shooting && shootCooldown <= 0)
	{
		shootCooldown = defaultShootCooldown;
		var bullet = instance_create_layer(x, y, "Instances", oProjectile);
		with (bullet)
		{
			direction = point_direction(other.x, other.y, mouse_x, mouse_y);
			speed = 3;
		}
	}
	
	#region movement
	
	// To reference velocity array
	var vector2_x = 0;
	var vector2_y = 1;

	// Horizontal Movement
	velocity_[vector2_x] = clamp(velocity_[vector2_x] + x_input, -max_velocity_[vector2_x], max_velocity_[vector2_x]);
	// Vertical Movement
	velocity_[vector2_y] = clamp(velocity_[vector2_y] + y_input, -max_velocity_[vector2_y], max_velocity_[vector2_y]);

	// Knockback
	velocity_[vector2_x] += knockback_vel[vector2_x] / 2;
	velocity_[vector2_y] += knockback_vel[vector2_y] / 2;
	// Reduce knockaback
	knockback_vel[vector2_x] *= 0.9;
	knockback_vel[vector2_y] *= 0.9;

	// Friction
	if (x_input = 0)
	{
		velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, .5);
	}
	if (y_input = 0)
	{
		velocity_[vector2_y] = lerp(velocity_[vector2_y], 0, .5);
	}
	
	#endregion movement
	
default:
	break;
}


// Move and contact tiles
moveAndContactTiles(collision_tile_map_id, 64, velocity_);


#region update

shootCooldown--;

#endregion update

