ds_crops_types = -1;
ds_crops_instances = -1;
ds_crops_data = ds_grid_create(4, 1);
ds_grid_clear(ds_crops_data, -1);

createCropType(4, 40, "Tomato");	// Tomato
createCropType(3, 35, "Potato");	// Potato
createCropType(2, 25, "Carrot");	// Carrot
createCropType(4, 45, "Artichoke");	// Artichoke
createCropType(3, 20, "Chilli");	// Chilli
createCropType(2, 20, "Cucumber");	// Cucumber
createCropType(5, 50, "Corn");	// Corn

// Mode that must be true for player to plant crops
planting = false;
selectCrop = 0;	// Type of crop that will be planted

cellSize = 64;
