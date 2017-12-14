/// @description Start room timer
alarm[1] = room_speed*time_left;
pause_time = false;

// Turn off controls menu
if(instance_exists(o_controls)) {
	o_controls.showControls = false;
}
