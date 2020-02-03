#region management

global.debug = false;

#endregion management

#region controls

global.KDebug	= ord("H");

global.KUp		= ord("W");
global.KLeft	= ord("A");
global.KDown	= ord("S");
global.KRight	= ord("D");
global.KSprint	= vk_shift;
global.KEquip = ord("1");

global.KPlant = ord("P");

global.KInteract = ord("E");

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

global.regCWidth = 640;
global.regCHeight = 360;
global.cwidth = global.regCWidth;
global.cheight = global.regCHeight;

#endregion camera

#region display



#endregion display

#region slider_actions

// Set GUI Slider Actions
enum slider_actions
{
	no_action,
	volume,
}

#endregion slider_actions

#region crops

enum crop
{
	tomato,
	potato,
	carrot,
	artichoke,
	chilli,
	cucumber,
	corn,
}

#endregion crops

#region items

//Written with "= x" so that we do not have to count through the items list each time

enum item
{
	none         = 0,
	tomato       = 1,
	potato       = 2,
	carrot       = 3,
	artichoke    = 4,
	chilli       = 5,
	gourd        = 6,
	corn         = 7,
	wood         = 8,
	stone        = 9,
	bucket      = 10,
	chair       = 11,
	picture     = 12,
	axe         = 13,
	potion      = 14,
	starfish    = 15,
	mushroom    = 16,
	
	height      = 17,
	//Height must be the last enum!
}

#endregion items

// States that dynamic objects can be in such as stun, aggro, 
#region object_states

enum object_states
{
	neutral,	// For player when no status effects
	idle,		// For enemies when not moving
	wander,		// Patrol for player or as an npc move around
	alert,		// For enemies when aggro, but not attacking
	attack,		// For enemies right after alert phase when attacking
	stunned,	// May be temporary because different types of stuns may be addded later
}

enum dir
{
	east,
	north_east,
	north,
	north_west,
	west,
	south_west,
	south,
	south_east,
}

#endregion object_states

#region collision_grid

// Standard size of grid cells
var cell_width = 64;
var cell_height = 64;

// Get amount of cells per height or width
var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

// create mp_grid for enemy pathfinding
global.pathgrid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);
// grid willl be destroyed and re-created every room start

#endregion collision_grid

#region TESTING_ONLY



#endregion TESTING_ONLY
