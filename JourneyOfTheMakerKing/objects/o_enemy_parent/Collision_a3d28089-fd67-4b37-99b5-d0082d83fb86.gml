/// @description Get hit by bullet

//TODO: scale damage based on weapon upgrade
if (hp > 0) {
	if (!(sprite_index == s_enemy_death_animation)) {
		hp -= 1;
	}

	if (hp <= 0) {
		sprite_index = s_enemy_death_animation;
		spd = 0;
		dead = true;
		alarm[0] = room_speed*10;
		depth = 5;
		if (loot) {
			if (spawn_loot(0.20)) {
				instance_destroy();
			}
		}
	}

	//TODO: do not destroy bullet if there is left over damage
	with (other) {
		instance_destroy();
	}
}
