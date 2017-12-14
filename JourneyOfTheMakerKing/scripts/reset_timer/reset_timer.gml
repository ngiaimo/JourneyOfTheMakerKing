///reset_timer(death)
var death = argument0;

if (death) {
	if(instance_exists(o_lvl_timer)) {
		o_lvl_timer.alarm[0] = room_speed*5;
	}
} else {
	if(instance_exists(o_lvl_timer)) {
		with (o_lvl_timer) {
			time = 85;
			time_left = time;
			timer_color = make_color_rgb(147, 177, 38);
			roomDone = false;
		}
	}
}
