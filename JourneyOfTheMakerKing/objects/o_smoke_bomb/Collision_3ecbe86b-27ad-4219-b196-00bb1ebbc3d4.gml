/// @description What to do when character touches item
if(!o_item_box.is_full) {
	o_item_box.is_full = true;
	o_item_box.stored_item = sprite_index;
} else {
	smoke_bomb();
}

instance_destroy();
