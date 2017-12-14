/// @description Destroy insance after death animation
if(sprite_index == s_char_death_animation) {
	if (o_lives_counter.extra_lives > 0) {
		o_lives_counter.extra_lives -= 1;
		visible = false;
		image_speed = 0;
		alarm[7] = room_speed*2;
	} else {
		instance_destroy();
		// Game over condition
	}
}

if(sprite_index == s_use_tombstone) {
	image_speed = 2;
	sprite_index = s_tombstone_monster;
	spd = original_spd;
}
