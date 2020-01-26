/// @description change direction state using object or point
/// @param angle

var angle = argument0;

// Return direction state based off of point position
if (angle >= -22.5) && (angle < 22.5)
	return dir.east;
	
else if (angle >= 22.5) && (angle < 67.5)
	return dir.north_east;
	
else if (angle >= 67.5) && (angle < 112.5)
	return dir.north;
	
else if (angle >= 112.5) && (angle < 157.5)
	return dir.north_west;
	
else if (angle >= 157.5) && (angle < 202.5)
	return dir.west;
	
else if (angle >= 202.5) && (angle < 247.5)
	return dir.south_west;
	
else if (angle >= 247.5) && (angle < 292.5)
	return dir.south;
	
else // if (angle >= 292.5) && (angle < 337.5)
	return dir.south_east;
