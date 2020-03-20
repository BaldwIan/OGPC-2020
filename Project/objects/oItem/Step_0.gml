//If the item is dropped then place it in a random direction
if(drop_move)
{
	x = lerp(x, goal_x, 0.1);
	y = lerp(y, goal_y, 0.1);
	if( abs(x - goal_x) < 1 and abs(y - goal_y) < 1)
	{
		//Then, state that the item has been dropped and is no longer moving
		drop_move = false;
	}
	//Otherwise, if the item is ALREADY DROPPED AND the player wants to PICK UP the item
} else {
	//Then check if the player is pressing the specified button to pick up the item and is within a certain range
	if(!keyboard_check(ord("O"))) exit;
	var px = oPlayer.x;
	var py = oPlayer.y;
	var r = 32;
	
	//If the player is near the item....
	if(point_in_rectangle(px, py, x - r, y - r, x + r, y + r))
	{
		//Item is on top of the player
		r = 2;
		if(point_in_rectangle(px, py, x - r, y - r, x + r, y + r))
		{
			//Move towards the player for pickup
	x = lerp(x, px, 0.1);
	y = lerp(y, py, 0.1);
			
		} else {
		//picked up item
		var in = item_num;
		
		//Starts messing with the player inventory
		with(oInventory)
		{
			var ds_inv = ds_inventory;
			var picked_up = false;
			//check if item exists in Inventory already by checking each individual slot (that's what the repeat is for)
			var yy = 0; repeat(inv_slots)
			{
	//If the current inventory slot being checked is filled with the same item as the item being picked up then add 1 to that item and stop checking
				if(ds_inv[# 0, yy] == in)
				{
					ds_inv[# 1, yy] += 1;
					picked_up = true;
					break;
			} else {
				//Else, keep checking slots
				yy += 1;
				}
			}
			
			
			//Otherwise, if there is none of that item in the players inventory add the item to an empty slot if there is one
			if(!picked_up)
			{
				//Check each inventory slot individually and repeat = to the number of slots
					yy = 0; repeat(inv_slots)
				{
					//If current slot being checked is empty then...
					if(ds_inv[# 0, yy] == item.none)
					{
						//Fill current slot with that item (just one)
						ds_inv[# 0, yy] = in;
						ds_inv[# 1, yy] += 1;
						//The item has been picked up
						picked_up = true;
						break;
				} else {
					//Else, keep checking slots
					yy += 1;
					}
				}
			}
			
			
			
			
		}
		//Destroy item if picked_up
		if(picked_up)
		{
			instance_destroy();
		}
		
		}
		
	}
	
}