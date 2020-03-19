/// @description Set values
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

// Adjust depth
part_system_depth(ps, depth);

// --Create Emitter
emitter = part_emitter_create(ps);
part_emitter_region(ps, particle, xMin, xMax, yMin, yMax, emitterShape, emitterDistribution);

if (streamMode)
{
	part_emitter_stream(ps, emitter, particle, streamAmt);
}