/// @description if a crop is fully grown and pressed, drop crop items
/// @param xpos
/// @param ypos

var harvestX = argument0;
var harvestY = argument1;

var cs = oCrops.cellSize;
var gx = harvestX div cs;
var gy = harvestY div cs;

var instGrid = oCrops.ds_crops_instances;
var cell = instGrid[# gx, gy];

if (cell != 0)	// If there is a crop here
{
	var inst = cell;
	if (inst.fullyGrown)	// If crop fully grown
	{
		instance_destroy(inst);	// Destroy crop instance
		instGrid[# gx, gy] = 0;	// Clear instance grid data
	}
}
