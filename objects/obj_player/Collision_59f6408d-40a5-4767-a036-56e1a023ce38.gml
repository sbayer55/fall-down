if (!on_surface && !is_jumping && other.bbox_top >= bbox_bottom - 7) {
	on_surface = true;
	sprite_index = spr_landing;
	image_speed = 1;
}
