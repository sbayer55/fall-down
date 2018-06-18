if (sprite_index == spr_jumping) {
	show_debug_message("freezing jumping")
	image_speed = 0;
	image_index = image_number - 1;
	is_jumping = false;
}
else if (sprite_index == spr_landing || sprite_index == spr_beam_in) {
	show_debug_message("switching to standing")
	sprite_index = spr_standing;
}