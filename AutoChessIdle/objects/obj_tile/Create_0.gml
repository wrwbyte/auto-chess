t_type = "grid"; // default first
image_blend = c_white; //default color

function apply_style() {
    if (t_type == "enemy") {
        image_blend = c_gray;
    } else {
        image_blend = c_white;
    }
}