text			= "<Default Text>";
font			= fntGui_12;
lifeTime		= room_speed * 2;	// Instance destroyed after this many frames
life			= lifeTime;			// Amount of updated life
angle			= 0;				// Angle to draw text at
direction		= 90;			// Angle that the text will fly 
speed			= 1;

// Position stuff
xOffset			= 0;

// Color
col				= [$FFFFFF];		// List of colors to cycle through
colCycle		= room_speed * 0.1;	// Amount of time (in frames) to switch colors
alarm[1]		= colCycle;
curCol			= 0;				// Index of col to draw text at

// Other movement
horizShakeAmt	= 0;				// amount to shake from left to right
horizShakeCycle	= 0;				// How often to switch shake dir (in frames)
alarm[2]		= horizShakeCycle;
tiltAmt			= 0;				// Midpoint rotation back & forth
tiltCycle		= 0;				// How often to switch the rotation dir (in frames)
alarm[3]		= tiltCycle / 2;	// Time (in frames) to change tile, halfed at first because starting angle is 0
rotateAmount	= 0;				// How much to rotate every frame (angles)
alpha			= 1;				// Alpha will scale with time alive