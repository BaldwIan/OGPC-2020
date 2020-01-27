if (distance_to_point(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)) <= 1) && (mouse_check_button(mb_left))
{
	active = true;
} else if (!mouse_check_button(mb_left))
{
	active = false;
}

if (active)
{
	val = (device_mouse_x_to_gui(0) - x) / sprite_get_width(sSlider);
	val = clamp(val, 0, cap);
	
	#region actions
	
	switch (action)
	{
	case slider_actions.no_action:
		break;
		
	case slider_actions.volume:
		audio_set_master_gain(0, val);
		if (!audio_is_playing(sndPlayback)) audio_play_sound(sndPlayback, 1, false);
		break;
		
	default:
		break;
	}
	
	#endregion actions
}

bX = x + sprite_get_width(sSlider) * val;
