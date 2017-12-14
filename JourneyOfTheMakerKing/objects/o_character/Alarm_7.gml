/// @description Respawn
sprite_index = s_character_stand;
x = original_x;
y = original_y;
visible = true;
spd = original_spd;
bullet_cooldown = original_bullet_cooldown;
damageable = true;
alarm[0] = bullet_cooldown;
reset_timer(true);
