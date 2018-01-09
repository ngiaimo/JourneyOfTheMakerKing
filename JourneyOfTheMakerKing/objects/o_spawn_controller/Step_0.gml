/// @description Spawn enemies
if(instance_exists(o_lvl_timer)) {
	if(!o_lvl_timer.roomDone && o_lvl_timer.alarm[1] > 0) {
			if (alarm[0] < 0) {
				spawn_enemies(room);
				alarm[0] = room_speed;
			}
		}
}
