//Clean Up triggers when the object is removed from the room
//ds_grids last until the end of the game, we destroy the grids on clean up so that the grids are not taking up processing power
ds_grid_destroy(ds_player_info);
ds_grid_destroy(ds_inventory);