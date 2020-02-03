if (keyboard_check_pressed(global.KInteract))
{
	if (page < array_length_1d(text) - 1)
	{
		page++;
		// Event to get wrapped string
		event_perform(ev_other, ev_user1);
		counter = 0;
	} else
	{
		instance_destroy(id);
	}
}
