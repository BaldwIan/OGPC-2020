///@description respawnCrop
///@param grid_x
///@param grid_y
///@param crop_type
///@param days_old

var gridX		= argument0;
var gridY		= argument1;
var cropType_	= argument2;
var daysOld_	= argument3;

var xx = gridX * cellSize;
var yy = gridY * cellSize;

// Create the crop
var cropInst = instance_create_layer(xx + (cellSize / 2), yy + (cellSize / 2), "Instances", oCrop);
ds_crops_instances[# gridX, gridY] = cropInst;

if (global.debug) { show_debug_message("Respawned a " + ds_crops_types[# 2, cropType_]); }

with (cropInst)
{
	cropType = cropType_;
	daysOld = daysOld_;
		
	// First growth will automatically put plant into next growth stage
	var firstGrowth = 0;
	if (daysOld > 0) { firstGrowth = 1; }
	
	growthStageDuration = oCrops.ds_crops_types[# 0, cropType];
				
	growthStage = firstGrowth + (daysOld div growthStageDuration);
}

return cropInst;
