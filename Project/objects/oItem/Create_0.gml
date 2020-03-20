//Size of individual square
cell_size = 32;
//Sprite spreadsheet
item_spr = sItems;

//Width and height of sprite sheet
spr_width = sprite_get_width(item_spr);
spr_height = sprite_get_height(item_spr);

//Current item value, if -1 then there is no item
item_num = -1;


x_frame = 0;
y_frame = 0;

x_offset = cell_size/2;
y_offset = cell_size*(2/3);


//Sets direction of item when dropped
drop_move = true;
var itemdir = irandom_range(0,259);
var len = 32;
goal_x = x + lengthdir_x(len, itemdir);
goal_y = y +lengthdir_y(len, itemdir);