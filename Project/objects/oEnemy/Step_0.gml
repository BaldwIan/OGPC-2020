var pathToPlayer = mp_grid_path(global.pathgrid, path, x, y, oPlayer.x, oPlayer.y, true);

switch (state)
{
case object_states.idle:
	if (pathToPlayer && (path_get_length(path) <= aggroDistance))
	{
		state = object_states.alert;
	}
	break;
	
case object_states.wander:
	if (pathToPlayer && (path_get_length(path) <= aggroDistance))
	{
		state = object_states.alert;
	}
	break;
	
case object_states.alert:
	path_start(path, spd, path_action_stop, false);
	if (path_get_length(path) > aggroDistance)
	{
		path_end();
		state = object_states.idle;
	}
	break;
	
case object_states.attack:

	break;
	
case object_states.stunned:

	knockback_vel[0] *= 0.9;
	knockback_vel[1] *= 0.9;
	
	if ((knockback_vel[0] == 0) && (knockback_vel[1] == 0))
	{
		state = object_states.idle;
	}
	
default:
	break;
}

knockback_vel[0] = clamp(knockback_vel[0], -max_knockback_vel[0], max_knockback_vel[0]);
knockback_vel[1] = clamp(knockback_vel[1], -max_knockback_vel[1], max_knockback_vel[1]);

// Move and contact tiles
moveAndContactTiles(collision_tile_map_id, 64, knockback_vel);
