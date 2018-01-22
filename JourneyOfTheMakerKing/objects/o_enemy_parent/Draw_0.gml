/// @description Draw Sprite and Effects
draw_self();

draw_set_color(c_black);

if(confused) {
	draw_text(x-3, y-13, "?");
}

draw_set_color(c_white);
