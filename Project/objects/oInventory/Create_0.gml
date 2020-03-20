//For camera
depth = -1;
//Incase we change the resolution of our screen
scale = 3;

//At the start of the game the player has the inventory closed, it is not open
showInventory = false;

//Number of total inventory slots
inv_slots = 24;
//Total inventory slots is width X height
//Number of slots wide
inv_slots_width = 8;
//Number of slots going down
inv_slots_height = 3;

//Slot currently selected by player WHILE IN INVENTORY (this is shown with a light overlay)
selected_slot = 0;
//Slot that picked up oItem is being placed into
pickup_slot = -1;

//Coordinates for what slot the mouse is on (starts at (0,0))
m_slotx = 0;
m_sloty = 0;

//Space between inventory slots
x_buffer = 2;
y_buffer = 4;


gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

//Size of an individual inventory slot
cellSize = 32;


inv_UI_width = 288;
inv_UI_height = 192;

//Inventory sprite
spr_inv_UI = sInventory;

//Item sprite
spr_inv_items = sItems;

spr_inv_items_columns = sprite_get_width(spr_inv_items) / cellSize;
spr_inv_items_rows = sprite_get_height(spr_inv_items) / cellSize;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale - 28);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale) - 20;

info_x = inv_UI_x + (9 * scale);
info_y = inv_UI_y + (9 * scale);

slots_x = info_x;
slots_y = inv_UI_y + (40 * scale);

//----Player Info----
//0 = Name
// 1 = Value

ds_player_info = ds_grid_create (2,4);
ds_player_info[# 0, 0] = "Gold";
ds_player_info[# 0, 1] = "Siler";
ds_player_info[# 0, 2] = "Copper";
ds_player_info[# 0, 3] = "Name";

ds_player_info[# 1, 0] = irandom_range(0,99);
ds_player_info[# 1, 1] = irandom_range(0,99);
ds_player_info[# 1, 2] = irandom_range(0,99);
ds_player_info[# 1, 3] = "Player";


//----Inventory----
//Check enums in declareGlobals to find all the items and their values
//0 = Item
//1 = Number

ds_inventory = ds_grid_create(2, inv_slots);

//Draws the inventory
var yy = 0; 
repeat(inv_slots)
{
ds_inventory[# 0, yy] = irandom_range(1, item.height - 1);
ds_inventory[# 1, yy] = irandom_range(1, 10);

	yy += 1;
}





