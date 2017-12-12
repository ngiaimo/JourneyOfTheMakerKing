/// @description Hit Character

//TODO: set character to a death state
if (other.damageable && !(other.sprite_index == s_char_death_animation) && !(sprite_index == s_enemy_death_animation)) {
	with (other) {
		sprite_index = s_char_death_animation;
		image_speed = 1;
		spd = 0;
		alarm[0] = original_bullet_cooldown*1000;
	}
}
