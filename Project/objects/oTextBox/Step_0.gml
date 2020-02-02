if (keyboard_check_pressed(global.KInteract))
{
	if (page < array_length_1d(text) - 1)
	{
		page++;
		counter = 0;
	} else
	{
		instance_destroy(id);
	}
}
