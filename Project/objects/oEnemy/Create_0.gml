// Movement
knockForce = 10;
spd = 3;
path = path_add();
aggroDistance = 200;	// 200 px

knockback_vel = [0, 0];
max_knockback_vel = [4, 4];

// Get the tile_map_id for collisions
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

// State
state = object_states.idle;
