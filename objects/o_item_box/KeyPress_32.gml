/// @description Use item in item box
is_full = false;

if (stored_item != noone) {
	switch (sprite_get_name(stored_item)) {
		case "s_shotgun":
			apply_buff("shotgun");
		break;
		case "s_heavy_machine_gun":
			apply_buff("machine_gun");
		break;
		case "s_wheel":
			apply_buff("wheel");
		break;
		case "s_sheriff_badge":
			apply_buff("coffee");
			apply_buff("machine_gun");
			apply_buff("shotgun");
		break;
		case "s_smoke_bomb":
			smoke_bomb();
		break;
		case "s_nuke":
			instance_create_layer(room_width/2, room_height/2, "Instances", o_exploding_nuke);
		break;
		case "s_tombstone":
			apply_buff("tombstone");
		break;
		default:
	}
}

stored_item = noone;


