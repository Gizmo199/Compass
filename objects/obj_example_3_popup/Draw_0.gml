// Dim background
draw_set_color(c_black);
draw_set_alpha(0.4);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Draw popup background
draw_sprite_stretched_ext(sprite_index, image_index, bbox_left, bbox_top, sprite_width, sprite_height, image_blend, image_alpha);