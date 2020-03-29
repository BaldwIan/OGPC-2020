/// @description Make fully grown particle effect if not yet created
#region particles

if (sparkleParticles == noone)
{
	sparkleParticles = instance_create_layer(x, y, "Instances", oPartEmitter);
	
	with(sparkleParticles)
	{
		// Adjust depth to be in front of crop
		depth = other.depth - 1;
	
		particle = global.particleSparkle;//part_type_create();
	
		#region emitter_info
	
		// --Emitter info
		regionW				= 48;
		regionH				= 64;
		regionOffsetX		= 0;
		regionOffsetY		= -16;

		xMin				= x - (regionW / 2) + regionOffsetX;
		xMax				= x + (regionW / 2) + regionOffsetX;
		yMin				= y - (regionH / 2) + regionOffsetY;
		yMax				= y + (regionH / 2) + regionOffsetY;
	
		streamMode = true;
	
		#endregion emitter_info
	}
}

#endregion particles