/// @description Set values
// --Part componetnts
if (particle == noone)	// If not creating a new particle type on the go
{
	particle = part_type_create();
	
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
}

if (part_type_exists(particle))
{
	// --Create Emitter
	emitter = part_emitter_create(global.ps);
	part_emitter_region(global.ps, emitter, xMin, xMax, yMin, yMax, emitterShape, emitterDistribution);

	if (streamMode)
	{
		part_emitter_stream(global.ps, emitter, particle, streamAmt);
	}
}