if (room == rmTest)
{
	ds_crops_instances = ds_grid_create(room_width div cellSize, room_height div cellSize);
	ds_grid_clear(ds_crops_instances, 0);
	
	// Respawn the crops
	if (ds_crops_data[# 0, 0] != -1)	// If crop data grid has data
	{
		var instNum = ds_grid_height(ds_crops_data);
		for (var i = 0; i < instNum; i++)
		{
			// Respawn the instance
			respawnCrop(
				ds_crops_data[# 0, i],
				ds_crops_data[# 1, i],
				ds_crops_data[# 2, i],
				ds_crops_data[# 3, i]
			);
		}
	}
	
	
	// Update crop days
	if (instance_exists(oCrop))
	{
		with (oCrop)
		{
			if (growthStage < maxGrowthStage)
			{
				daysOld++;
				
				// First growth will automatically put plant into next growth stage
				var firstGrowth = 0;
				if (daysOld > 0) { firstGrowth = 1; }
				
				growthStage = firstGrowth + (daysOld div growthStageDuration);
			} else
			{
				growthStage = maxGrowthStage;
				fullyGrown = true;
				alarm[1] = 1;
			}
		}
	}
}
