// --Follow info
followObj = noone;	// If not noone, then particles will be drawn on follow's position

// --Particle System
ps = part_system_create();
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

// --Part componetnts
part_type_sprite(particle, partSprite, animateSprite, stretchSpriteAnim, randomSpriteSubImg);
part_type_scale(particle, xScale, yScale);
part_type_size(particle, sizeMin, sizeMax, sizeIncr, sizeWiggle);
part_type_color3(particle, col1, col2, col3);
part_type_alpha3(particle, alpha1, alpha2, alpha3);
part_type_direction(particle, dirMin, dirMax, dirIncr, dirWiggle);
part_type_speed(particle, spdMin, spdMax, spdIncr, spdWiggle);
part_type_gravity(particle, gravAmt, gravDir);
part_type_orientation(particle, orienAngMin, orienAngMax, orienAngIncr, orienAngWiggle, orienAngRelative);
part_type_life(particle, lifeMin, lifeMax);
part_type_blend(particle, true);

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

streamMode			= false;	// Stream mode creates a certain amount of particles every second
						// burst is the other mode (if stream == false) which creates particles when activated
streamAmt			= 1;	// Amount of particles to create every frame
burstAmt			= 1;	// Amount of particles to create when emitting burst
bursting			= true;	// When controlled by another object, set burst to true to burst

// --Emitter
emitter = part_emitter_create(ps);
part_emitter_region(ps, particle, xMin, xMax, yMin, yMax, emitterShape, emitterDistribution);

if (streamMode)
{
	part_emitter_stream(ps, emitter, particle, streamAmt);
}
