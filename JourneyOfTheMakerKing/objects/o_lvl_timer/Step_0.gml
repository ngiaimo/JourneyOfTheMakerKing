/// @description Count down time

if(instance_exists(o_character) && o_character.sprite_index != s_char_death_animation) {
	if (alarm[1] > 0) {
		time_left = alarm[1]/60;
	}
} else {
	alarm[1] = -1;
	pause_time = true;
}


