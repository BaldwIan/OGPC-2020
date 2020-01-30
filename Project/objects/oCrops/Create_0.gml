ds_crops_types = 0;
ds_crops_instances = 0;

createCropType(4, 40);	// Tomato
createCropType(3, 35);	// Potato
createCropType(2, 25);	// Carrot
createCropType(4, 45);	// Artichoke
createCropType(3, 20);	// Chilli
createCropType(2, 20);	// Cucumber
createCropType(5, 50);	// Corn

// Mode that must be true for player to plant crops
planting = false;
selectCrop = 0;	// Type of crop that will be planted

cellSize = 64;
