// --Follow info
followObj = noone;	// If not noone, then particles will be drawn on follow's position

// --Particle System
particle = part_type_create();

#region particle_info

// --Particle info - default values
// Sprite info
partSprite			= sPartDefault;		// Sprite index of particle
animateSprite		= false;			// Whether sprite will animate or not
stretchSpriteAnim	= false;		// Whether animation of sprite will fit it's lifetime
randomSpriteSubImg	= false;		// Whether to choose frame from sprite animation randomly

// Scale Info
xScale				= 1.0;
yScale				= 1.0;

// Size Info
sizeMin				= 1.0;
sizeMax				= 2.0;
sizeIncr			= 0.0;
sizeWiggle			= 0.0;

// Color Info
col1				= c_white;
col2				= c_white;
col3				= c_white;

// Alpha Info
alpha1				= 1.0;
alpha2				= 0.5;
alpha3				= 0.0;

// Direction Info
dirMin				= 0.0;
dirMax				= 360.0;
dirIncr				= 0.0;
dirWiggle			= 0.0;

// Speed Info
spdMin				= 0.1;
spdMax				= 1.0;
spdIncr				= 0.0;
spdWiggle			= 0.0;

// Gravity Info
gravAmt				= 0.0;
gravDir				= 90.0;

// Orientation Info
orienAngMin			= 0.0;
orienAngMax			= 360.0;
orienAngIncr		= 0.0;
orienAngWiggle		= 0.0;
orienAngRelative	= true;

// Life Info
lifeMin				= 100;
lifeMax				= 500;

#endregion particle_info

#region set_components

alarm[1] = 1;

#endregion set_components

// --Emitter info - default values
regionW				= 40;
regionH				= 40;
regionOffsetX		= 0;
regionOffsetY		= 0;

xMin				= x - (regionW / 2) + regionOffsetX;
xMax				= x + (regionW / 2) + regionOffsetX;
yMin				= y - (regionH / 2) + regionOffsetY;
yMax				= y + (regionH / 2) + regionOffsetY;

emitterShape		= ps_shape_ellipse;
emitterDistribution	= ps_distr_gaussian;

streamMode			= true;	// Stream mode creates a certain amount of particles every second
						// burst is the other mode (if stream == false) which creates particles when activated
streamAmt			= 1;	// Amount of particles to create every frame
burstAmt			= 1;	// Amount of particles to create when emitting burst
bursting			= false;	// When controlled by another object, set burst to true to burst
