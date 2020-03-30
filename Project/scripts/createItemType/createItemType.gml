/// @description create_item_type
/// @param displayName
/// @param itemDescription
//	- More params will be added later for sure

var displayName		= argument[0];	// Shown name for weapon in inventory
var itemDescription	= argument[1];	// Description for weapon in inventory

var yPos						= ds_grid_height(global.DS_ITEM_DATA);
global.DS_ITEM_DATA[# yPos, 0]	= displayName;
global.DS_ITEM_DATA[# yPos, 1]	= itemDescription;