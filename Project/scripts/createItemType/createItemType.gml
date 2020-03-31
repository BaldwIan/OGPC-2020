/// @description create_item_type
/// @param displayName
/// @param itemDescription
//	- More params will be added later for sure

var yPos			= argument[0];	// Position of weapon

var displayName		= argument[1];	// Shown name for weapon in inventory
var itemDescription	= argument[2];	// Description for weapon in inventory

global.DS_ITEM_DATA[# yPos, 0]	= displayName;
global.DS_ITEM_DATA[# yPos, 1]	= itemDescription;