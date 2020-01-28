/// @description Move a random amount every 2-5 seconds

switch (state)
{
case object_states.idle:
	x_input = irandom_range(-1, 1) * acceleration_;
	y_input = irandom_range(-1, 1) * acceleration_;
	
	state = object_states.wander;
	break;
	
case object_states.wander:
	x_input = 0;
	y_input = 0;
	
	state = object_states.idle;
	break;
	
default:
	break;
}

alarm[1] = random_range(2, 5) * room_speed;	// alarm 1 will be set to 2-5 seconds
