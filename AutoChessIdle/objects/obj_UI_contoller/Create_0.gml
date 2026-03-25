tile_size = 64;
enemy_board_offset_x = 512;

//Player Grid
for (var row = 0; row < 6; row++) {
    for (var col = 0; col < 8; col++) {
       var tile = instance_create_layer(
            100 + col * tile_size,
            100 + row * tile_size,
            "Tiles",
            obj_tile
        );
		tile.t_type = "grid";
    }
}
//Player Shop
for (var i = 0; i < 6; i++) {
    var tile = instance_create_layer(
        100 + i * tile_size,
        600,
        "Tiles",
        obj_tile
    );
	tile.t_type = "shop";
}

//Player Inventory
for (var i = 0; i < 10; i++) {
    var tile = instance_create_layer(
        100 + i * tile_size,
        680,
        "Tiles",
        obj_tile
    );
	tile.t_type = "inv";
}
//Enemy Grid
for (var row = 0; row < 6; row++) {
    for (var col = 0; col < 8; col++) {
       var tile = instance_create_layer(
            enemy_board_offset_x + 100 + col * tile_size,
            100 + row * tile_size,
            "Tiles",
            obj_tile
        );
		
		tile.t_type = "enemy";
		tile.apply_style();
    }
}


