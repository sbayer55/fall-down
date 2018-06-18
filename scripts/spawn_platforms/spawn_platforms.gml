var num_platforms = round(room_width / platform_width) - 4;

for (var i = 0; i < num_platforms; i++) {
	if (random(100) < 70) {
		global.num_platforms += 1;
		instance_create_layer(i * platform_width, room_height, "PlatformLayer", obj_platform);
	}
}
