///@description addKeyTime
///@param R
///@param G
///@param B

///@param con
///@param sat
///@param brt

///@param pop_strength
///@param popThreshold

var r = argument0;
var g = argument1;
var b = argument2;

var con = argument3;
var sat = argument4;
var brt = argument5;

var popStrength = argument6;
var popThreshold = argument7;

if (is_undefined(color[0,0]))
{
	var i = 0;
} else
{
	var i = array_height_2d(color);
}

color[i, 0] = r / 255;
color[i, 1] = g / 255;
color[i, 2] = b / 255;

conSatBrt[i, 0] = con;
conSatBrt[i, 1] = sat;
conSatBrt[i, 2] = brt;

conSatBrt[1, 3] = popStrength;
conSatBrt[i, 4] = popThreshold;
