/// @description Add attributes to particle type
var particle			= argument[0]

var partSprite			= argument[1];
var animateSprite		= argument[2];
var stretchSpriteAnim	= argument[3];
var randomSpriteSubImg	= argument[4];
var xScale				= argument[5];
var yScale				= argument[6];
var sizeMin				= argument[7];
var sizeMax				= argument[8];
var sizeIncr			= argument[9];
var sizeWiggle			= argument[10];
var col1				= argument[11];
var col2				= argument[12];
var col3				= argument[13];
var alpha1				= argument[14];
var alpha2				= argument[15];
var alpha3				= argument[16];
var dirMin				= argument[17];
var dirMax				= argument[18];
var dirIncr				= argument[19];
var dirWiggle			= argument[20];
var spdMin				= argument[21];
var spdMax				= argument[22];
var spdIncr				= argument[23];
var spdWiggle			= argument[24];
var gravAmt				= argument[25];
var gravDir				= argument[26];
var orienAngMin			= argument[27];
var orienAngMax			= argument[28];
var orienAngIncr		= argument[29];
var orienAngWiggle		= argument[30];
var orienAngRelative	= argument[31];
var lifeMin				= argument[32];
var lifeMax				= argument[33];

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
