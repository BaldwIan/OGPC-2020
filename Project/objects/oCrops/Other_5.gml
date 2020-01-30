if (room = rmTest)	// Whatever room the crops will grow in
{
	var instNum = instance_number(oCrop);
	if (instNum == 0) { ds_grid_clear(ds_crops_data, -1) }	// No data
	else	// There is crops, and their data needs to be saved
	{
		ds_grid_resize(ds_crops_data, ds_grid_width(ds_crops_data), instNum);
		
		// Loop through instance grid and get each crops data
		var gw = ds_grid_width(ds_crops_instances);
		var gh = ds_grid_height(ds_crops_instances);
		var slot = 0;
		
		for (var xx = 0; xx < gw; xx++)
		{
			for (var yy = 0; yy < gh; yy++)
			{
				// Check if crop is in grid spot
				var inst = ds_crops_instances[# xx, yy];
				
				
				// if there is a crop save its data
				if (inst != 0)
				{
					ds_crops_data[# 0, slot] = xx;
					ds_crops_data[# 1, slot] = yy;
					ds_crops_data[# 2, slot] = inst.cropType;
					ds_crops_data[# 3, slot] = inst.daysOld;
					
					slot++;
				}
			}
		}
	}
	
	ds_grid_destroy(ds_crops_instances);
}
