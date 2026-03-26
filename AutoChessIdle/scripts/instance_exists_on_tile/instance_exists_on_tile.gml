//Instance exists on tile 
global.instance_exists_on_tile = function(obj_type, tile_id) {
    // loop over all instances of the object type
    var n = instance_number(obj_type);
    for (var i = 0; i < n; i++) {
        var inst = instance_find(obj_type, i);
        // check if variable exists and matches the tile
        if (variable_instance_exists(inst, "placed_on_tile") && inst.placed_on_tile == tile_id) {
            return true; // found a unit on this tile
        }
    }
    return false; // none found
};