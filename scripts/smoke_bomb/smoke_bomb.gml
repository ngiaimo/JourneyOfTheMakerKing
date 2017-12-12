///smoke_bomb()
with (o_enemy_parent) {
	// stun them and set something so the newly spawned enemies come out stunned if the buff is still active
}

with (o_character) {
	var xx = irandom_range(55, 263);
	var yy = irandom_range(39, 247);
	x = xx;
	y = yy;
	apply_buff("smoke_bomb");
}