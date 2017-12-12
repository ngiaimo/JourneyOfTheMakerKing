///create_bolt(dis)
var dis = argument0;
var images = floor(dis/16);
randomize();

for (var s = 0; s < array_length_1d(o_character.bolt); s++) {
	o_character.bolt[s] = noone;
}

//TODO: Mess with random generation of sprite
for (var i = 0; i < images; i++) {
	var sprite = choose(s_lightning_zig, s_lightning_zag);
	o_character.bolt[i] = sprite; 
}