/// @description Make fully grown particle effect if not yet created
#region particles

if (sparkleParticles == noone)
{
	sparkleParticles = instance_create_layer(x, y, "Instances", oPartEmitter);
	
	with(sparkleParticles)
	{
		// Adjust depth to be in front of crop
		depth = other.depth - 1;
	
		particle = part_type_create();
		
		#region particle_info
			
		var partSprite			= sPartSparkle;
		var animateSprite		= false;
		var stretchSpriteAnim	= true;
		var randomSpriteSubImg	= true;
			
		// Scale Info
		var xScale				= 1.0;
		var yScale				= 1.0;
			
		// Size Info
		var sizeMin				= 0.25;
		var sizeMax				= 0.4;
		var sizeIncr			= -0.1;
		var sizeWiggle			= 1.0;
			
		// Color Info
		var col1				= c_white;
		var col2				= c_white;
		var col3				= c_white;
			
		// Alpha Info
		var alpha1				= 1.0;
		var alpha2				= 0.75;
		var alpha3				= 0.5;
			
		// Direction Info
		var dirMin				= 0.0;
		var dirMax				= 180.0;
		var dirIncr				= 0.0;
		var dirWiggle			= 0.0;
			
		// Speed Info
		var spdMin				= -0.5;
		var spdMax				= 0.5;
		var spdIncr				= 0.0;
		var spdWiggle			= 1.0;
			
		// Gravity Info
		var gravAmt				= 0.015;
		var gravDir				= 270.0;
			
		// Orientation Info
		var orienAngMin			= 0.0;
		var orienAngMax			= 360.0;
		var orienAngIncr		= 10.0;
		var orienAngWiggle		= 15.0;
		var orienAngRelative	= true;
			
		// Life Info
		var lifeMin				= 30;
		var lifeMax				= 60;
			
		createParticle(particle, partSprite, animateSprite, stretchSpriteAnim,
			randomSpriteSubImg, xScale, yScale, sizeMin, sizeMax, sizeIncr,
			sizeWiggle, col1, col2, col3, alpha1, alpha2, alpha3, dirMin,
			dirMax, dirIncr, dirWiggle, spdMin, spdMax, spdIncr, spdWiggle,
			gravAmt, gravDir, orienAngMin, orienAngMax, orienAngIncr,
			orienAngWiggle, orienAngRelative, lifeMin, lifeMax);
			
		#endregion particle_info
	
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