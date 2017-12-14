/// @description Draw timer bar
draw_self();

// draw_rectangle_color(x+10, y+4, x + 9 + timer_width*(time_left/time), y+8, timer_color, timer_color, timer_color, timer_color, false);
if (alarm[1] <= 0 && !roomDone && !pause_time) {
	timer_color = make_color_rgb(147, 177, 38);
	draw_rectangle_color(x+10, y+4, x + 9 + timer_width, y+8, timer_color, timer_color, timer_color, timer_color, false);
} else if (time_left > 10) {
	timer_color = make_color_rgb(147, 177, 38);
	draw_rectangle_color(x+10, y+4, x + 9 + timer_width*(time_left/time), y+8, timer_color, timer_color, timer_color, timer_color, false);
} else {
	timer_color = make_color_rgb(188,51,74);
	draw_rectangle_color(x+10, y+4, x + 9 + timer_width*(time_left/time), y+8, timer_color, timer_color, timer_color, timer_color, false);
}