/// @description Spawn enemey logic based on current room
/// @param currentRoom

current_room = room_get_name(argument0);

switch (current_room) {
	case "r_w1_l1":
		var location = choose("north", "south", "east", "west");
		var num = choose(1, 2, 3);
		with (o_spawner) {
			if (loc == location) {
				repeat(num) {
					if (location == "north" || location == "south") {
						instance_create_layer(irandom_range(x, x+sprite_width), y, "Instances", o_orc);
					} else {
						instance_create_layer(x, irandom_range(y, y+sprite_height), "Instances", o_orc);
					}
				}
			}
		}
	break;
	default:
	break;
}