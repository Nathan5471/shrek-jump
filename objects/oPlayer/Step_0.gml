x_speed = 0;
y_speed = 0;
walk_speed = 1;

if (not instance_exists(oCoin)) {
	room_restart()
}

x_speed = 0;
y_speed += .75;

if keyboard_check(vk_right) {
	x_speed = walk_speed;
	image_xscale = 1;
} else if keyboard_check(vk_left) {
	x_speed = -walk_speed;
	image_xscale = -1;
}

if (place_meeting(x, y + 1, oSolid)) {
	if (keyboard_check_pressed(vk_up)) {
		y_speed = -30;
	} else {
		y_speed = 0;
	}
}

if (y > room_height or y < 0 or x > room_width or x < 0) {
	room_restart()
}

move_and_collide(x_speed, y_speed, oSolid);