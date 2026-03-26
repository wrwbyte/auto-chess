if (wave_active && (alive <= 0)) {
	wave_active = false;
	//alarm[0] = 60; // delay?
}

button_x = 16; button_y = 550; button_w = 110; button_h = 48;
if (mouse_x > button_x && mouse_x < button_x+button_w &&
    mouse_y > button_y && mouse_y < button_y+button_h) 
{
    if (!wave_active) {
        start_wave(); // call your function
    }
}