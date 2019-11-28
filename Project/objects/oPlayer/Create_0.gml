// Movement Variables
velocity_ = [0, 0];
max_velocity_ = [4, 4];
acceleration_ = 3;

// Get the tile_map_id for collisions
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);
