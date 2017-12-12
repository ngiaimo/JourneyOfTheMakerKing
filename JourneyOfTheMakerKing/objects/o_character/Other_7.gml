/// @description Destroy insance after death animation
if(sprite_index == s_char_death_animation) {
	instance_destroy();
}

if(sprite_index == s_use_tombstone) {
	image_speed = 2;
	sprite_index = s_tombstone_monster;
	spd = original_spd;
}
