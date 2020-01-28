if (keyboard_check_pressed(global.KPlant)) { planting = !planting; }

// Plant crop when click left mouse
if (mouse_check_button_pressed(mb_left) && planting)
{
	var mx = mouse_x;
	var my = mouse_y;

	instanceCreateCrop(mouse_x, mouse_y, crop.corn);
}
