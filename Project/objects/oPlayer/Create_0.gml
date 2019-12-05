// Movement Variables
velocity_ = [0, 0];
knockback_vel = [0, 0];
max_velocity_ = [4, 4];
acceleration_ = 3;

// Shooting
defaultShootCooldown = room_speed *1;
shootCooldown = defaultShootCooldown;

// Get the tile_map_id for collisions
var layer_id = layer_get_id("CollisionTiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

// Health system
HP = 100;
maxHP = 100;