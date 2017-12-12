/// @description What to do when character touches item
if(!o_item_box.is_full) {
	o_item_box.is_full = true;
	o_item_box.stored_item = sprite_index;
} else {
	instance_create_layer(room_width/2, room_height/2, "Instances", o_exploding_nuke);
}

instance_destroy();
