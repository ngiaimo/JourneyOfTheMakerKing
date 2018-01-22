/// Control spawning enemies
currentLevel = noone;
spawnerCenterX = sprite_width / 2;
spawnerCenterY = sprite_height /2;
loc = noone;

if(instance_exists(o_level_counter)) 
{
	currentLevel = o_level_counter.currentLevel;
}

