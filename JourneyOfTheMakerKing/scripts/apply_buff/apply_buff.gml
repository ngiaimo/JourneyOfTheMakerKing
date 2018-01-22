///apply_buff(buff)
buff = argument0;

switch (buff) {
	case "coffee":
		if(!o_character.buffs[COFFEE]) {
			o_character.buffs[COFFEE] = true;
			o_character.spd += 0.5;
		}
		o_character.alarm[COFFEE+1] = room_speed*10;
	break;
	case "machine_gun": 
		o_character.buffs[MACHINE_GUN] = true;
		o_character.bullet_cooldown = room_speed/10;
		o_character.alarm[MACHINE_GUN+1] = room_speed*10;
	break;
	case "shotgun":
		o_character.buffs[SHOTGUN] = true;
		if (o_character.bullet_cooldown == o_character.original_bullet_cooldown) {
			o_character.bullet_cooldown = o_character.original_bullet_cooldown*.9;
		}
		o_character.alarm[SHOTGUN+1] = room_speed*10;
	break;
	case "wheel":
		o_character.buffs[WHEEL] = true;
		o_character.alarm[WHEEL+1] = room_speed*10;
	break;
	case "smoke_bomb":
		o_character.buffs[INVISIBLE] = true;
		o_character.alarm[INVISIBLE+1] = room_speed*10;
		o_character.damageable = false;
	break;
	case "tombstone":
		var dis = 0;
		with (o_character) {
			dis = distance_to_point(x, 0);
		}
		create_bolt(dis);
		o_character.buffs[TOMBSTONE] = true;
		o_character.alarm[TOMBSTONE+1] = room_speed*10;
		o_character.damageable = false;
		o_character.spd += 0.3;
		o_character.sprite_index = s_use_tombstone;
		o_character.image_speed = 2;
	break;
	default:
}