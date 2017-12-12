///shoot(dir)
var dir = argument0;

sdir = 0;

// Get direction
switch (dir) {
	case 4: // up-right
		sdir = 45;
		o_character.char_direction = "right";
		break;
	case 3: // up
		sdir = 90;
		o_character.char_direction = "up";
		break;
	case 2: // up-left
		sdir = 135;
		o_character.char_direction = "left";
		break;
	case 1: // right
		sdir = 360;
		o_character.char_direction = "right";
		break;
	case -1: // left
		sdir = 180;
		o_character.char_direction = "left";
		break;
	case -2: // down-right
		sdir = 315;
		o_character.char_direction = "right";
		break;
	case -3: // down
		sdir = 270;
		o_character.char_direction = "down";
		break;
	case -4: // down-left
		sdir = 225;
		o_character.char_direction = "left";
		break;
	default:
		sdir = 0;
		sprite_index = s_character_stand;
}

// Create bullet with buffs in mind
if(o_character.has_buff && sdir !=0) {
	// Shotgun And Wheel
	if (o_character.buffs[SHOTGUN] && o_character.buffs[WHEEL]) {
		var bullet1 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet1.direction = 45;
		var bullet2 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet2.direction = 45+15;
		var bullet3 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet3.direction = 45-15;
		var bullet4 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet4.direction = 90;
		var bullet5 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet5.direction = 90+15;
		var bullet6 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet6.direction = 90-15;
		var bullet7 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet7.direction = 135;
		var bullet8 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet8.direction = 135+15;
		var bullet9 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet9.direction = 135-15;
		var bullet10 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet10.direction = 180;
		var bullet11 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet11.direction = 180+15;
		var bullet12 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet12.direction = 180-15;
		var bullet13 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet13.direction = 225;
		var bullet14 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet14.direction = 225+15;
		var bullet15 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet15.direction = 225-15;
		var bullet16 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet16.direction = 270;
		var bullet17 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet17.direction = 270+15;
		var bullet18 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet18.direction = 270-15;
		var bullet19 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet19.direction = 315;
		var bullet20 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet20.direction = 315+15;
		var bullet21 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet21.direction = 315-15;
		var bullet22 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet22.direction = 360;
		var bullet23 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet23.direction = 360+15;
		var bullet24 = instance_create_layer(x,y,"Instances",o_bullet);
		bullet24.direction = 360-15;
		
	} else {
		// Wheel Only
		if (o_character.buffs[WHEEL]) {
			var bullet1 = instance_create_layer(x,y,"Instances",o_bullet);
			bullet1.direction = 45;
			var bullet2 = instance_create_layer(x,y,"Instances",o_bullet);
			bullet2.direction = 90;
			var bullet3 = instance_create_layer(x,y,"Instances",o_bullet);
			bullet3.direction = 135;
			var bullet4 = instance_create_layer(x,y,"Instances",o_bullet);
			bullet4.direction = 180;
			var bullet5 = instance_create_layer(x,y,"Instances",o_bullet);
			bullet5.direction = 225;
			var bullet6 = instance_create_layer(x,y,"Instances",o_bullet);
			bullet6.direction = 270;
			var bullet7 = instance_create_layer(x,y,"Instances",o_bullet);
			bullet7.direction = 315;
			var bullet8 = instance_create_layer(x,y,"Instances",o_bullet);
			bullet8.direction = 360;
		} else {
			// Shotgun only
			if (o_character.buffs[SHOTGUN]) {
				var bullet1 = instance_create_layer(x,y,"Instances",o_bullet);
				bullet1.direction = sdir;
				var bullet2 = instance_create_layer(x,y,"Instances",o_bullet);
				bullet2.direction = sdir-15;
				var bullet3 = instance_create_layer(x,y,"Instances",o_bullet);
				bullet3.direction = sdir+15;
			} else {
				// Any other buffs
				if(sdir != 0) {
					var bullet = instance_create_layer(x,y,"Instances",o_bullet);
					bullet.direction = sdir;
				}			
			}
		}
	}
} else {
	if(sdir != 0) {
		var bullet = instance_create_layer(x,y,"Instances",o_bullet);
		bullet.direction = sdir;
	}
}