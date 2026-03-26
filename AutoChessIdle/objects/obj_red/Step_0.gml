
//Attack Code
shoot_timer++;

if((shoot_timer >= attack_speed) && placed_on_tile== TileType.GRID) {
	shoot_timer = 0;
	
	var b = instance_create_layer(x, y, "Enemy", obj_red_proj);
	b.damage = attack;
	b.target = instance_nearest(x,y, obj_blue);
}

// Start dragging
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
        dragging = true;
    }
}

// While dragging
if (dragging) {
    x = mouse_x;
    y = mouse_y;
}

// Stop dragging (drop)
if (mouse_check_button_released(mb_left)) {
    if (dragging) {
        dragging = false;

        // Check what tile we dropped on
        var dropped_tile = noone;

        with (obj_tile) {
            if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
                dropped_tile = id;
            }
        }

        // If we found a tile
        if (dropped_tile != noone) {
            var tile = dropped_tile;

            // Snap to tile
            x = tile.x;
            y = tile.y;

            // Update placement
            tile_id = tile.id;
            placed_on_tile = tile.t_type;
			show_debug_message("Dropped on tile type: " + string(dropped_tile.t_type));
        }
    }
}