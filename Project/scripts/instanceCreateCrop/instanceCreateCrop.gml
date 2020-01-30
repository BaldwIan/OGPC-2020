///@description instanceCreateCrop
///@param x
///@param y
///@param crop_type

var plantX = argument0;
var plantY = argument1;

var cs = oCrops.cellSize;
var gx = plantX div cs;
var gy = plantY div cs;
var instGrid = oCrops.ds_crops_instances;
var cell = instGrid[# gx, gy];

if (cell == 0)
{
	xx = gx * cs;
	yy = gy * cs;

	// Check for soil
	var layID	= layer_get_id("T_Soil");
	var mapID	= layer_tilemap_get_id(layID);
	var tilData = tilemap_get_at_pixel(mapID, plantX, plantY);

	if (tilData == 0)
	{
		if (global.debug) { show_debug_message("No soil, crop not planting"); }
		return false;
	} else
	{
		if (global.debug) { show_debug_message("crop planted"); }
	}

	// Create the instance
	var cropInst = instance_create_layer(xx + (cs / 2), yy + (cs / 2), "Instances", oCrop);
	instGrid[# gx, gy] = cropInst;

	// Give crop characteristics
	with (cropInst)
	{
		cropType = argument2;
		growthStageDuration = oCrops.ds_crops_types[# 0, cropType];
	}

	return cropInst;
} else
{
	if (global.debug) { show_debug_message("Crop position unavailable"); }
	return false;
}
