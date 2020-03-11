// Change day value
global.daysPassed++;

// Update crop day value
if (instance_exists(oCrops))
{
	if (ds_exists(oCrops.ds_crops_instances, ds_type_grid))
	{
		var gw = ds_grid_width(oCrops.ds_crops_instances);
		var gh = ds_grid_height(oCrops.ds_crops_instances);
		
		for (var xx = 0; xx < gw; xx++)
		{
			for (var yy = 0; yy < gh; yy++)
			{
				var inst = oCrops.ds_crops_instances[# xx, yy];
				
				// If there is a crop in the grid position
				if (inst != 0)
				{
					with (inst) { cropGrow(); }
				}
			}
		}
	} else if (oCrops.ds_crops_data[# 0, 0] != -1)	// If crop data grid has data
	{
		var instNum = ds_grid_height(oCrops.ds_crops_data);
		for (var i = 0; i < instNum; i++)
		{
			// Add to day
			oCrops.ds_crops_data[# 3, i]++;
		}
	}
}