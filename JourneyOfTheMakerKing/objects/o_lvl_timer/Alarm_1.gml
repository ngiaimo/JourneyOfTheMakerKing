/// @description Timer Complete

// Trigger stop spawning
if (instance_exists(o_character) && o_character.sprite_index != s_char_death_animation) {
	roomDone = true;
}

