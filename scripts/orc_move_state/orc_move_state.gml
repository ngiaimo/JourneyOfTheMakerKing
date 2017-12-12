///orc_move_state()
dir = point_direction(x,y, target_x, target_y);

//TODO: do actual math stuff for this instead of just feeling it out
if (instance_exists(o_character)) {

	if (dir > 45 && dir < 135) {
		y-=spd;
	}
	
	if (dir > 225 && dir < 315) {
		y+=spd;
	}
	
	if (dir == 180) {
		x-=spd;
	} else if (dir > 135 && dir < 180) {
		x-=(spd/1.5);
		y-=(spd/1.5);
	} else if (dir > 180 && dir < 225) {
		x-=(spd/1.5);
		y+=(spd/1.5);
	}

	if (dir == 0 || dir == 360) {
		x+=spd;
	} else if (dir > 0 && dir < 45) {
		x+= (spd/1.5);
		y-= (spd/1.5);
	} else if (dir > 315 && dir < 360) {
		x+=(spd/1.5);
		y+=(spd/1.5);
	}
	
}