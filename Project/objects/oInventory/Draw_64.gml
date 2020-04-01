if(!showInventory) exit;

//Inventory Back
draw_sprite_part_ext
(
	spr_inv_UI, 0, cellSize, 0, 
	inv_UI_width, inv_UI_height, 
	inv_UI_x, inv_UI_y, scale, 
	scale, c_white, 1
);


//----Player Info----
var info_grid = ds_player_info;

draw_set_font(fntInventoryText);
var c = c_black;
draw_text_color(info_x, info_y, info_grid[# 0, 3] + ": " + info_grid[# 1, 3], c, c, c, c, 1);


//The numbers 192, 15, and 18 are dependent on our current inventory picture and will need to change
draw_set_font(fntInventoryText);
var yy = 0;
repeat(3)
{
	draw_text_color((info_x + 192 * scale) + ((15 + 18) * scale * yy), 
	info_y, string(info_grid[# 1, yy]), c, c, c, c, 1);
	yy += 1;
}

// --Inventory

// Visit https://www.youtube.com/watch?v=Bj48UWayTsM at 37 minutes for an explanation on the below vars
var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;

repeat(inv_slots)
{
	// x,y location for slot
	xx = slots_x + ((cellSize + x_buffer) * ix * scale);
	yy = slots_y + ((cellSize + y_buffer) * iy * scale);
	
	//Item
	iitem = inv_grid[# 0, ii];
	sx = (iitem mod spr_inv_items_columns) * cellSize;
	sy = (iitem div spr_inv_items_columns) * cellSize;
	
	// Draw slot and item
	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cellSize, cellSize, xx, yy, scale, scale, c_white, 1);

	switch(ii)
	{
		case selected_slot:
			if(iitem > 0) draw_sprite_part_ext
			(spr_inv_items, 0, sx, sy, cellSize, 
			cellSize, xx, yy, scale, scale, c_white, 1);
			gpu_set_blendmode(bm_add);
			draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cellSize, cellSize, xx, yy, scale, scale, c_white, .3);
			gpu_set_blendmode(bm_normal);
			
			// Draw item number
			if(iitem > 0)
			{

			var number = inv_grid[# 1, ii];
			draw_text_color(xx, yy, string(number), c, c, c, c, 1);

			}
		break;
		
		case pickup_slot:
			if(iitem > 0) 
			// If picked up current slot will NOT show number or item
		break;
		

		
		default:
			if(iitem > 0) draw_sprite_part_ext
			(spr_inv_items, 0, sx, sy, cellSize, 
			cellSize, xx, yy, scale, scale, c_white, 1);
			
			// Draw item number
			if(iitem > 0)
			{

			var number = inv_grid[# 1, ii];
			draw_text_color(xx, yy, string(number), c, c, c, c, 1);

			}
		
		break;
	}
	

	
	// Increment
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}		

// Draw Item Description

var iinfo_grid = ds_items_info, description = "", 
iitem = inv_grid[#0, selected_slot];

if(iitem > 0) {
	
	draw_set_font(fntGui_12);
	// Shows name. description (for example: Mushroom. A type of food)
	description = iinfo_grid[# 0, iitem] + ". " + iinfo_grid[# 1, iitem];
	var sH = string_height("M");
	c = c_black;
	
	draw_text_ext_color(desc_x, desc_y, description, sH, inv_UI_width - (x_buffer*2), c, c, c, c, 1);
	
	
	
}



if(pickup_slot != -1)
{
	//Item
	iitem = inv_grid[# 0, pickup_slot];
	sx = (iitem mod spr_inv_items_columns) * cellSize;
	sy = (iitem div spr_inv_items_columns) * cellSize;
	draw_sprite_part_ext
	(spr_inv_items, 0, sx, sy, cellSize, 
	cellSize, mousex, mousey, scale, scale, c_white, 1);
	
	var inum = inv_grid[# 1, pickup_slot];
	draw_text_color(mousex - (cellSize * scale * 0.4), mousey, string(inum), c, c, c, c, 1);
}