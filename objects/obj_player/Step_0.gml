if keyboard_check(vk_escape)
	game_end();

// Player Control
impulse_x = 0;
impulse_y = 0;
is_running = true;

if abs(phy_speed_x) < move_speed
	if keyboard_check(vk_left)
		phy_speed_x = -move_speed;
	else if keyboard_check(vk_right)
		phy_speed_x = move_speed;
	else
		is_running = false;

if on_surface && !is_jumping && keyboard_check(vk_up) {
	if phy_speed_x == 0
		impulse_y += jump_impulse
	else {
		normalized_movement_momentum = move_speed / clamp(phy_speed_x, -move_speed, move_speed);
		angle_radians = (-pi / 8) * normalized_movement_momentum;
		impulse_x += sin(angle_radians) * jump_impulse;
		impulse_y += cos(angle_radians) * jump_impulse;
	}

	sprite_index = spr_jumping;
	on_surface = false;
	is_jumping = true;
}

physics_apply_local_impulse(0, 0, impulse_x, impulse_y);
is_falling = phy_linear_velocity_y > 0

// Update Sprite
// show_debug_message("----------------------")

if on_surface {
	if is_falling {
		// show_debug_message("Falling")
		on_surface = false
		sprite_index = spr_landing;
		image_speed = 0;
	}
	else {
		// show_debug_message("On surface")
		if is_running && sprite_index != spr_running {
			sprite_index = spr_running;
			// show_debug_message("Running!")
		}
		else if !is_running && sprite_index != spr_standing {
			sprite_index = spr_standing;
			// show_debug_message("Standing")
		}
	}
}

// Set direction
if (phy_speed_x < 0 && image_xscale == 1) || (phy_speed_x > 0 && image_xscale < 0) {
	image_xscale *= -1;
}

//physics_apply_local_impulse(0, 0, impulse_x, impulse_y)