///@description instanceCreateCrop
///@param x
///@param y
///@param crop_type

var cs = oCrops.cellSize;
var xx = argument0 div cs;
var yy = argument1 div cs;

xx *= cs;
yy *= cs;

// Create the instance
var cropInst = instance_create_layer(xx + (cs / 2), yy + (cs / 2), "Instances", oCrop);

// Give crop characteristics
with (cropInst)
{
	cropType = argument2;
	growthStageDuration = oCrops.ds_crops_types[# 0, cropType];
}

return cropInst;