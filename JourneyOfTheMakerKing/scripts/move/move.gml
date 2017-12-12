///move(hspd, vspd)
var hspd = argument0;
var vspd = argument1;

// Horizontal movement
if (!place_meeting(x+hspd, y, o_solid)) {
	x += hspd;
}

if (!place_meeting(x, y+vspd, o_solid)) {
	y += vspd;
}

// Return true if we were able to move
return x != xprevious || y != yprevious;