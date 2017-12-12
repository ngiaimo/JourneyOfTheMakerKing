/// @description Control Character

// Prevents moving and shooting during tombstone animation
if (sprite_index == s_use_tombstone) {
	spd = 0;
	alarm[0] = 1;
}

// Get direction of movment and add speed
var hspd = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*spd;
var vspd = (keyboard_check(ord("S")) - keyboard_check(ord("W")))*spd;

if ((hspd != 0 || vspd != 0) && !buffs[TOMBSTONE]) {
	sprite_index = asset_get_index("s_character_"+char_direction);
	image_speed = 2*spd;
} else if ((hspd == 0 && vspd == 0) && !buffs[TOMBSTONE] && !(sprite_index == s_char_death_animation)) {
	sprite_index = asset_get_index("s_character_"+char_direction);
	image_speed = 0;
	image_index = 0;
}

// Move
var moved = move(hspd, vspd);

// Shoot
var s_up = keyboard_check(vk_up) || keyboard_check_pressed(vk_up);
var s_right = keyboard_check(vk_right) || keyboard_check_pressed(vk_right); 
var s_down = keyboard_check(vk_down) || keyboard_check_pressed(vk_down);
var s_left = keyboard_check(vk_left) || keyboard_check_pressed(vk_left);

var sdir = (3 * (s_up - s_down)) + s_right - s_left;

has_buff = check_buffs();

if((s_up || s_right || s_down || s_left) && alarm[0] <= 0) {
	// Shoot bullets in specified direction
	shoot(sdir);
	
	// Shooting cancels invisiblity prematurely
	if (buffs[INVISIBLE]) {
		alarm[INVISIBLE+1] = 1;
	}
	
	// Sets cooldown to next shot
	alarm[0] = bullet_cooldown;
} else if (alarm[0] < 0 && !buffs[TOMBSTONE]) {
		// Did not shoot recently so gun is not out
		char_direction = "stand";
}


