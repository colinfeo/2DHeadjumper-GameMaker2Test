/// Init
tilesize = 64;															// size of tiles
gametiles = layer_tilemap_get_id("GameTiles");								// this will be the layer we use for collisions
collisiontiles = layer_tilemap_get_id("CollisionTiles");

gravity = 10;