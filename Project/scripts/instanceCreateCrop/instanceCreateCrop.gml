///@description instanceCreateCrop
///@param x
///@param y
///@param crop_type

var plantX = argument0;
var plantY = argument1;

var cs = oCrops.cellSize;
var xx = plantX div cs;
var yy = plantY div cs;

xx *= cs;
yy *= cs;

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

// Give crop characteristics
with (cropInst)
{
	cropType = argument2;
	growthStageDuration = oCrops.ds_crops_types[# 0, cropType];
}

return cropInst;