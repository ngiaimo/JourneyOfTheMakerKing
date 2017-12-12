/// @description Create More Explosions
if (alarm[0] mod 10 == 0) {
	repeat (10) {
		var xx = irandom_range(55, 263);
		var yy = irandom_range(39, 247);
		instance_create_layer(xx, yy, "Instances", o_explosion);
	}
}
