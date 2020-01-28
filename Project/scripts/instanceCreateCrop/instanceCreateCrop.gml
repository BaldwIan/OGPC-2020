///@description instanceCreateCrop
///@param x
///@param y
///@param crop_type

// Create the instance
var cropInst = instance_create_layer(argument0, argument1, "Instances", oCrop);

// Give crop characteristics
with (cropInst)
{
	cropType = argument2;
	growthStageDuration = oCrops.ds_crops_types[# 0, cropType];
}

return cropInst;