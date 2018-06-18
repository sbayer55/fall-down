/// @description Insert description here
// You can write your code in this editor

if (y + sprite_height < 0) {
	global.num_platforms -= 1;
	instance_destroy();
}