/// @param x
/// @param y
/// @param object
/// @param force

// Position to get angle from
var xx = argument0;
var yy = argument1;

// Object getting knocked back
var object = argument2;

// Amount to knockback
var knockAmount = argument3;

// Failsafe if object does not exist);
if (!instance_exists(object))
{
	return;
}

var angle = point_direction(xx, yy, object.x, object.y);

object.knockback_vel[0] += lengthdir_x(knockAmount, angle);
object.knockback_vel[1] += lengthdir_y(knockAmount, angle);
