/// @description Start room timer
alarm[1] = room_speed*time;

if(instance_exists(o_controls)) {
	o_controls.visible = false;
}
