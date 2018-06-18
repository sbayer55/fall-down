/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(dank_mono);
draw_set_color(c_fuchsia);

draw_text(10, 10, string(global.num_platforms) + " platforms");

if (instance_exists(obj_player)) {
	player = instance_find(obj_player, 0)
	draw_text(10, 70, "Velocity: " + string(player.phy_linear_velocity_x) + ", " + string(player.phy_linear_velocity_y));
	draw_text(10, 90, "Speed: " + string(player.phy_speed_x) + " x " + string(player.phy_speed_y));
	draw_text(10, 110, "Sprite: " + string(player.sprite_index) + " on surface: " + string(player.on_surface) + " image_speed:" + string(player.image_speed));
	draw_text(10, 130, "bb_top: " + string(player.bbox_top) + " bb_bottom: " + string(player.bbox_bottom) + " height: " + string(player.bbox_bottom - player.bbox_top));
}