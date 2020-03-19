if (part_emitter_exists(global.ps, emitter))
{
	part_emitter_destroy(global.ps, emitter);	// Get rid of emitter
}
if (part_type_exists(particle))
{
	part_type_destroy(particle);		// Get rid of particle
}