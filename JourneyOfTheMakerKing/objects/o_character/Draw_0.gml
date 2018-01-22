/// @description Draw Character
draw_self();

if (buffs[INVISIBLE]) {
	image_alpha = 0.5;
} else {
	image_alpha = 1;
}

if (sprite_index == s_use_tombstone) {
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	draw_self();
	for (var i = 0; i < array_length_1d(o_character.bolt); i++) {
		if (bolt[i] != noone) {
			draw_sprite(bolt[i], 0, x, y-(16*i));
		}
	}
}

draw_text(x, y+5, string(spd));
