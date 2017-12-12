/// @description Init Character Info
#macro COFFEE 0
#macro MACHINE_GUN 1
#macro SHOTGUN 2
#macro WHEEL 3
#macro INVISIBLE 4
#macro TOMBSTONE 5
#macro BOOTS 0
#macro GUN 1
#macro AMMO 2

image_index = 0;
image_speed = 0;

spd = 0.8;
original_spd = spd;
damageable = true;
char_direction = "down";

// Shot Cooldown
alarm[0] = -1;
original_bullet_cooldown = room_speed/4;
bullet_cooldown = original_bullet_cooldown;

// Powerups
has_buff = false;
buffs[COFFEE] = false;
buffs[MACHINE_GUN] = false;
buffs[SHOTGUN] = false;
buffs[WHEEL] = false;
buffs[INVISIBLE] = false;
buffs[TOMBSTONE] = false;

// Purchaseable Upgrades
upgrades[BOOTS] = -1;
upgrades[GUN] = -1;
upgrades[AMMO] = -1;

// Lightning Bolt
bolt[0] = noone;