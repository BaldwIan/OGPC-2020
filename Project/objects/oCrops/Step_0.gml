#region planting

if (keyboard_check_pressed(global.KPlant)) { planting = !planting; }

// Plant crop when click left mouse
if (planting)
{
	if (mouse_wheel_up())	{ selectCrop = clamp(selectCrop + 1, 0, ds_grid_height(ds_crops_types) - 1); }
	if (mouse_wheel_down())	{ selectCrop = clamp(selectCrop - 1, 0, ds_grid_height(ds_crops_types) - 1); }
	
	if mouse_check_button_pressed(mb_left)
	{
		instanceCreateCrop(mouse_x, mouse_y, selectCrop);
	}
}

#endregion planting

if (global.debug)
{
	if (instance_exists(oCrop)) && (keyboard_check_pressed(ord("G")))
	{
		with (oCrop)
		{
			if (growthStage < maxGrowthStage)
			{
				daysOld++;
				growthStage = daysOld div growthStageDuration;
			} else
			{
				growthStage = maxGrowthStage;
				fullyGrown = true;
				alarm[1] = 1;
			}
		}
	}
}