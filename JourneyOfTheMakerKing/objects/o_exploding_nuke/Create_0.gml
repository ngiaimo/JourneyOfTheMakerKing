/// @description Init nuke
alarm[0] = room_speed;

with (o_enemy_parent) {
	loot = false;
	instance_destroy();
}

repeat (15) {
	var xx = irandom_range(55, 263);
	var yy = irandom_range(39, 247);
	instance_create_layer(xx, yy, "Instances", o_explosion);
}
	
