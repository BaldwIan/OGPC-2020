#region Show Inventory

//If the player pressed the open inventory button then show the inventory
if (keyboard_check_pressed(global.KInventory)) { showInventory = !showInventory; }
//Else, the inventory should not be shown and therefore the rest of the code should not be shown
if (!showInventory) exit;

#endregion

#region Mouse Slot
//Checks where the mouse is within the inventory
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

//Sets cell buffers, the space between cells
var cell_xbuff = (cellSize + x_buffer) * scale;
var cell_ybuff = (cellSize + y_buffer) * scale;

//Sets variables that will be used to find the current slot the mouse is on
var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

//Sets variables that decide what slot the mouse is on or what slot the mouse is closest to
var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

var mouse_in_inventory = true;

//If the mouse is in the inventory the slot will be updated
if ((nx >= 0) && (nx < inv_slots_width) && (ny >= 0) && (ny < inv_slots_height))
{
	//Mouse slot x and y minus the buffer space
	var sx = i_mousex - (nx * cell_xbuff);
	var sy = i_mousey - (ny * cell_xbuff);
	
	//This is the code that changes the selected slot
	if ((sx < cellSize * scale) && (sy < cellSize * scale))
	{
		//Sets the coordinates for the slot of the mouse (x,y) = the current slot the mouse is on
		m_slotx = nx;
		m_sloty = ny;
	}
} else
{
	mouse_in_inventory = false;
}

//Set selected slot to mouse position
selected_slot = min(inv_slots - 1, m_slotx + (m_sloty * inv_slots_width));
#endregion Mouse Slot

#region Pickup Item
//Pickup Item


var inv_grid = ds_inventory;
//Selected slot but through grid code
var ss_item = inv_grid[# 0, selected_slot];

//If the mouse is holding an item...
if (pickup_slot != -1)
{
	//When the selected slot is clicked by the player
	if (mouse_check_button_pressed(mb_left))
	{
		if (!mouse_in_inventory) {
			#region drop_item
			
			var pitem = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, pickup_slot] -= 1;
			
			//destroy item in inventory if it was the last one
			if(inv_grid[# 1, pickup_slot] == 0)
			{
				inv_grid[# 0, pickup_slot] = items.none;
				pickup_slot = -1;
			}
		
			//Create the item
			var inst = instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oItem);
			with(inst)
			{
				item_num = pitem;
				x_frame = item_num mod (spr_width/cell_size);
				y_frame = item_num div (spr_width/cell_size);
			}
		}
		#endregion drop_item
		//If the slot being interacted with is empty...
		else if (ss_item == items.none)
		{
			//Then the selected slot becomes that item
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			//And the mouse no longer holds that item
			inv_grid[# 0, pickup_slot] = items.none;
			inv_grid[# 1, pickup_slot] = 0;
			
			pickup_slot = -1;
		}
		else
		//If the slot has the same item as the item the mouse is holding
		if (ss_item == inv_grid[# 0, pickup_slot])
		{
			if (selected_slot != pickup_slot)
			{
				//Items combine values into a single stack of items in the inventory
				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];
				//Mouse slot becomes empty
				inv_grid[# 0, pickup_slot] = items.none;
				inv_grid[# 1, pickup_slot] = 0;
			}
				pickup_slot = -1;
		}
		else
		{
			//Items in inventory swaps with items being held by mouse
			var ss_item_num = inv_grid[# 1, selected_slot];
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = ss_item;
			inv_grid[# 1, pickup_slot] = ss_item_num;
		}
	}
}
else if (ss_item != items.none)
{
	//Drop item into the Game World
	if(keyboard_check_pressed(global.KInteract))
	{
		inv_grid[# 1, selected_slot] -= 1;
		//destroy item in inventory if it was the last one
		if(inv_grid[# 1, selected_slot] == 0)
		{
			inv_grid[# 0, selected_slot] = items.none;
		}
		
		//Create the item
		var inst = instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oItem);
		with(inst)
		{
			item_num = ss_item;
			x_frame = item_num mod (spr_width/cell_size);
			y_frame = item_num div (spr_width/cell_size);
		}
	}
	
	//Drop pickup item into new slot
	if(mouse_check_button_pressed(mb_left))
	{
		pickup_slot = selected_slot;
	}
}
#endregion Pickup Item

