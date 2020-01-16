#region management

global.debug = false;

#endregion management

#region controls

global.KDebug = ord("H");

#endregion controls

#region button_actions

// Set GUI Button Actions
enum button_actions
{
	// Basic actions
	no_action,
	exit_game,
	destroy_self,
	
	// Menu actions
	goto_room,
	
	
	
}

#endregion button_actions

#region camera

enum cammode
{
	follow_object,
	follow_mouse_drag,
	follow_mouse_border,
	follow_mouse_peak,
	follow_point_peak,
	move_to_target,
	shake,
	shake_follow,
}

global.regCWidth = 960;
global.regCHeight = 540;
global.cwidth = global.regCWidth;
global.cheight = global.regCHeight;

#endregion camera

#region slider_actions

// Set GUI Slider Actions
enum slider_actions
{
	no_action,
	volume,
}

#endregion slider_actions



