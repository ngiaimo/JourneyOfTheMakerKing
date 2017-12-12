/// @description Execute state
event_inherited();

if (instance_exists(o_character)) {
	target_x = o_character.x;
	target_y = o_character.y;
}

script_execute(state);