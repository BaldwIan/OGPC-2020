/// @description Make fully grown particle effect if not yet created
#region particles

if (sparkleParticles == noone)
{
	sparkleParticles = instance_create_layer(x, y, "Instances", oPartEmitter);
}

#endregion particles