/// @description Init Monster
event_inherited();
hp = 1;
spd = 0.6;
sprite_index = s_orc;
image_speed = 1.2;
target_x = o_character.x;
target_y = o_character.y;
state = orc_move_state;
prev_state = state;