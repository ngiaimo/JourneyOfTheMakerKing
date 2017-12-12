/// @description Execute State
// Checks if they should be confused or fear

if(hp > 0) {
	if (instance_exists(o_character)) {
		if (o_character.buffs[INVISIBLE]) {
			confused = true;
		} else {
			confused = false;
		}

		if (o_character.buffs[TOMBSTONE]) {
			fear = true;
		} else {
			fear = false;
		}
	}

	// Change states based on status or if no status based on childs state
	if (confused) {
		prev_state = state;
		state = enemy_confused_state;
	} else if (fear) {
		prev_state = state;
		state = enemy_fear_state;
	}
}
