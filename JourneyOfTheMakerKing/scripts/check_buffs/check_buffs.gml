///check_buffs()
has_buff = false;

// Checks for everything but machine gun and coffee
for (var i = 2; i < array_length_1d(o_character.buffs); i++) {
	if (o_character.buffs[i] == true) {
		has_buff = true;
		break;
	}
}

return has_buff;