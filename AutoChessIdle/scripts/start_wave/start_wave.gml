function start_wave(){
	//Increment Wave
	wave++;
	wave_active = true;
	
	//Decide # of enemies
	var count = irandom_range(1,3);
	alive = count; // how many start alive
	
	//Discover all enemy tile spots and track them
	// get a list of all tiles that are "enemy" type
	show_debug_message("Total tiles: " + string(instance_number(obj_tile)));
	var enemy_tiles = array_create(0);
	for (var i = 0; i < instance_number(obj_tile); i++) { //Look at all the tiles
		var t = instance_find(obj_tile, i); 
		if (t.t_type == TileType.ENEMY) { //For each enemy tile
			array_push(enemy_tiles, t.id); //add to array
    }
}
	
	//Debug: make sure tiles exist
    show_debug_message("Enemy tiles found: " + string(array_length(enemy_tiles)));
	//Populate Enemies
	for (var i = 0; i < count; i++){
		//Pick Tile
		var tile_index = irandom(array_length(enemy_tiles) - 1);
		var tile_id = enemy_tiles[tile_index];
		var tile_inst = instance_find(tile_id, 0); // get the tile instance
		//Populate
		var e = instance_create_layer(tile_inst.x, tile_inst.y, "Enemy", obj_blue);
		e.contoller = id; //tell enemy who tracks it
	}
	
	//Populate shop
	with (obj_tile) {
    if (t_type = TileType.SHOP) {
		show_debug_message("Spawning red unit on tile id: " + string(id) + " at (" + string(x) + "," + string(y) + ")");
        // Only spawn a unit if no unit is currently on this tile
        if (!global.instance_exists_on_tile(obj_red, id)) {
            var red_unit = instance_create_layer(x, y, "Enemy", obj_red);//Spawn red guy
            red_unit.tile_id = id;
			red_unit.placed_on_tile = TileType.SHOP; // track tile type (SHOP, INVENTORY, GRID)
			}
		}
	}
}

