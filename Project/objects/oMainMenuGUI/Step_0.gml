#region keyPress

// Check if left mouse was pressed on top of the button
if (mouse_check_button_pressed(mb_left)) && (distance_to_point(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)) <= 1) 
{
	switch (action)
	{
	// Basic Actions
	case button_actions.no_action:
		break;
		
	case button_actions.exit_game:
		game_end();
		break;
		
	case button_actions.destroy_self:
		instance_destroy(id);
		break;
	
	case button_actions.goto_room:
		room_goto(room_);
		break;
		
		
	default:
		break;
	}
}





#endregion keyPress


