// obj_tile Create event

t_type = TileType.NONE;  // default

//t_type = "grid"; // default first
image_blend = c_white; //default color

function apply_style() {
    if (t_type == TileType.ENEMY) {
        image_blend = c_gray;
    } else {
        image_blend = c_white;
    }
}