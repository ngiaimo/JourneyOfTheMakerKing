/// @description Draw item if one is held
draw_self();

if(is_full) {
	draw_sprite(stored_item, 0, x, y);
}
