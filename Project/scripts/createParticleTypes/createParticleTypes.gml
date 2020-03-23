/// @description should only be run once in declare globals

// Create dirt particle
#region particle_info_dirt

// --Particle info

// Sprite info
var partSprite			= sPartDirt;
var animateSprite		= false;
var stretchSpriteAnim	= false;
var randomSpriteSubImg	= false;

// Scale Info
var xScale				= 1.0;
var yScale				= 1.0;

// Size Info
var sizeMin				= 1.0;
var sizeMax				= 1.5;
var sizeIncr			= 0.0;
var sizeWiggle			= 0.0;

// Color Info
var col1				= c_white;
var col2				= c_white;
var col3				= c_white;

// Alpha Info
var alpha1				= 0.5;
var alpha2				= 0.25;
var alpha3				= 0.0;

// Direction Info
var dirMin				= 0.0;
var dirMax				= 180.0;
var dirIncr				= 10.0;
var dirWiggle			= 15.0;

// Speed Info
var spdMin				= 0.1;
var spdMax				= 0.15;
var spdIncr				= -0.05;
var spdWiggle			= 0.0;

// Gravity Info
var gravAmt				= 0.08;
var gravDir				= 90.0;

// Orientation Info
var orienAngMin			= 0.0;
var orienAngMax			= 360.0;
var orienAngIncr		= 10.0;
var orienAngWiggle		= 15.0;
var orienAngRelative	= true;

// Life Info
var lifeMin				= 10;
var lifeMax				= 20;

#endregion particle_info_dirt
global.particleDirt	= part_type_create();
createParticle(global.particleDirt, partSprite, animateSprite, stretchSpriteAnim,
				randomSpriteSubImg, xScale, yScale, sizeMin, sizeMax, sizeIncr,
				sizeWiggle, col1, col2, col3, alpha1, alpha2, alpha3, dirMin,
				dirMax, dirIncr, dirWiggle, spdMin, spdMax, spdIncr, spdWiggle,
				gravAmt, gravDir, orienAngMin, orienAngMax, orienAngIncr,
				orienAngWiggle, orienAngRelative, lifeMin, lifeMax);
				
//#region particle_info_sparkle

//// --Particle info

//// Sprite info
//partSprite			= sPartSparkle;
//animateSprite		= true;
//stretchSpriteAnim	= true;
//randomSpriteSubImg	= false;

//// Scale Info
//xScale				= 1.0;
//yScale				= 1.0;

//// Size Info
//sizeMin				= 0.5;
//sizeMax				= 0.8;
//sizeIncr			= -0.1;
//sizeWiggle			= 1.0;

//// Color Info
//col1				= c_white;
//col2				= c_white;
//col3				= c_white;

//// Alpha Info
//alpha1				= 1.0;
//alpha2				= 0.75;
//alpha3				= 0.5;

//// Direction Info
//dirMin				= 0.0;
//dirMax				= 360.0;
//dirIncr				= 0.0;
//dirWiggle			= 0.0;

//// Speed Info
//spdMin				= 0.03;
//spdMax				= 0.035;
//spdIncr				= -0.02;
//spdWiggle			= 1.0;

//// Gravity Info
//gravAmt				= 0.05;
//gravDir				= 270.0;

//// Orientation Info
//orienAngMin			= 0.0;
//orienAngMax			= 360.0;
//orienAngIncr		= 10.0;
//orienAngWiggle		= 15.0;
//orienAngRelative	= true;

//// Life Info
//lifeMin				= 15;
//lifeMax				= 60;

//#endregion particle_info_sparkle
//global.particleSparkle	= part_type_create();
//createParticle(global.particleSparkle, partSprite, animateSprite, stretchSpriteAnim,
//				randomSpriteSubImg, xScale, yScale, sizeMin, sizeMax, sizeIncr,
//				sizeWiggle, col1, col2, col3, alpha1, alpha2, alpha3, dirMin,
//				dirMax, dirIncr, dirWiggle, spdMin, spdMax, spdIncr, spdWiggle,
//				gravAmt, gravDir, orienAngMin, orienAngMax, orienAngIncr,
//				orienAngWiggle, orienAngRelative, lifeMin, lifeMax);
