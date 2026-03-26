// Draw labels
draw_text(16, 600 + tile_size/2, "Shop");      // next to the shop row
draw_text(16, 680 + tile_size/2, "Storage");   // next to the inventory row

button_x = 16; button_y = 550; button_w = 110; button_h = 48;
draw_rectangle(button_x, button_y, button_x+button_w, button_y+button_h, false);
draw_set_color(make_color_rgb(255, 128, 0)); // orange text
draw_text(button_x + 10, button_y + 10, "Start Wave");
draw_set_color(c_white); //reset color brush