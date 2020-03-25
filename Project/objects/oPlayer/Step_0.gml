#region get_input

// Get movement input
var x_input = (keyboard_check(global.KRight) - keyboard_check(global.KLeft)) * acceleration_;
var y_input = (keyboard_check(global.KDown) - keyboard_check(global.KUp)) * acceleration_;

var isSprinting = keyboard_check(global.KSprint);

isMoving =	(keyboard_check(global.KRight))	|| (keyboard_check(global.KLeft)) ||
			(keyboard_check(global.KDown))	|| (keyboard_check(global.KUp));
	
isMoving = isMoving && (abs(velocity_[0]) > 0 || abs(velocity_[1]) > 0);


#endregion get_input

#region state_actions

switch (state)
{
case object_states.neutral:
	
	#region input
	
	// Attack input
	if (mouse_check_button_pressed(mb_left))
	{
		var mAngle	= point_direction(x, y, mouse_x, mouse_y);
		if ((mAngle > 90) && (mAngle <= 270))
		{
			yFrame = 9;
		} else
		{
			yFrame = 8;
		}
		state		= object_states.attack;
		attackType	= attack_types.primary;
		frames		= attackFrames;
		animSpd		= primaryAttackAnimSpd;
		xFrame = 0;
		break;
	}
	if (mouse_check_button_pressed(mb_right))
	{
		var mAngle	= point_direction(x, y, mouse_x, mouse_y);
		if ((mAngle > 90) && (mAngle <= 270))
		{
			yFrame = 11;
		} else
		{
			yFrame = 10;
		}
		state		= object_states.attack;
		attackType	= attack_types.alternate;
		frames		= attackFrames;
		animSpd		= alternateAttackAnimSpd;
		xFrame = 0;
		break;
	}
	
	#endregion input
	
	#region movement
	
	// To reference velocity array
	var vector2_x = 0;
	var vector2_y = 1;

	// --Horizontal Movement
	
	// clamp horiz left
	var leftVelClamp = -max_velocity_[vector2_x] - (isSprinting * sprintSpd[vector2_x]);	// if sprinting, then sprint speed is added
	// clamp horiz right
	var rightVelClamp = max_velocity_[vector2_x] + (isSprinting * sprintSpd[vector2_x]);	// if sprinting, then sprint speed is added
	velocity_[vector2_x] = clamp(velocity_[vector2_x] + x_input, leftVelClamp, rightVelClamp);
	
	// --Vertical Movement
	
	var upVelClamp = -max_velocity_[vector2_y] - (isSprinting * sprintSpd[vector2_y]);	// if sprinting, then sprint speed is added
	// clamp horiz right
	var downVelClamp = max_velocity_[vector2_y] + (isSprinting * sprintSpd[vector2_y]);	// if sprinting, then sprint speed is added
	velocity_[vector2_y] = clamp(velocity_[vector2_y] + y_input, upVelClamp, downVelClamp);

	// Knockback
	velocity_[vector2_x] += knockback_vel[vector2_x] / 2;
	velocity_[vector2_y] += knockback_vel[vector2_y] / 2;
	// Reduce knockaback
	knockback_vel[vector2_x] *= 0.9;
	knockback_vel[vector2_y] *= 0.9;

	// Friction
	if (x_input = 0)
	{
		velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, .75);
	}
	if (y_input = 0)
	{
		velocity_[vector2_y] = lerp(velocity_[vector2_y], 0, .75);
	}
	
	#endregion movement
	break;
	
case object_states.attack:
	// Stop moving the player in attack state
	velocity_[0]	= 0;
	velocity_[1]	= 0;
	
	if (xFrame >= frames - 1)
	{
		state	= object_states.neutral;
		frames	= walkFrames;
		animSpd	= walkAnimSpd;
	}
	
	break;
	
default:
	break;
}

#endregion state_actions

#region collision
// -- COLLISION

// Move and contact tiles
moveAndContactTiles(collision_tile_map_id, 64, velocity_);

// Room transition
var rmTransition = instance_place(x, y, oRoomTransition);

#endregion collision


#region update

var mouseAngle = point_direction(x, y, mouse_x, mouse_y);

if (isMoving)
{
	dir_state = getDirStateVelocity(velocity_);
	walkParticleSystem.bursting = true;
} else
{
	dir_state = getDirStateAngle(mouseAngle);
}

// Room transition
if (rmTransition != noone)
{
	with (oManager)
	{
		if (!doTransition)
		{
			spawnRoom	= rmTransition.targetRoom;
			spawnX		= rmTransition.targetX;
			spawnY		= rmTransition.targetY;
			doTransition = true;
		}
	}
}

#endregion update

