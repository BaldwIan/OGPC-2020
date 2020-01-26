/// @description change direction state using object or point
/// @param 2d velocity array

var velocity = argument0;


// temp vars for spds
var hspd = velocity_[0];
var vspd = velocity_[1];

// Return direction state based off of velocity array
if (hspd > 0 && vspd < 0)			// up-right
{
	return dir.north_east;
} else if (hspd == 0 && vspd < 0)	// up
{
	return dir.north;
} else if (hspd < 0 && vspd < 0)	// up-left
{
	return dir.north_west;
} else if (hspd < 0 && vspd == 0)	// left
{
	return dir.west;
} else if (hspd < 0 && vspd > 0)	// down-left
{
	return dir.south_west;
} else if (hspd == 0 && vspd > 0)	// down
{
	return dir.south;
} else if (hspd > 0 && vspd > 0)	// down-right
{
	return dir.south_east
} else								// right
{
	return dir.east;
}
