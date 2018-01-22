/// @description Control Loot Spawn
/// @param % chance

// TODO: Tweak and make loot system better

var chanceToSpawn = argument0;
var chanceOfCoin = .50; // 50%
var chanceOfPowerUpS = .80; // 30%
var chanceOfPowerUpL = .95; // 15%
var chanceOf5CoinOrLife = 1; // 5%

randomize();
var loot_chance = random(1);
show_debug_message("Loot Chance: " + string(loot_chance));
if (loot_chance <= chanceToSpawn) {
	randomize();
	var item = random(1);
	
	if (item >= 0 && item <= chanceOfCoin) {
		return instance_create_layer(x,y, "Instances", o_one_coin);
	}
	
	if (item > chanceOfCoin && item <= chanceOfPowerUpS) {
		var powerUp = choose(o_shotgun, o_coffee, o_smoke_bomb, o_heavy_machine_gun, o_wheel);
		return instance_create_layer(x,y, "Instances", powerUp);
	}
	
	if (item > chanceOfPowerUpS && item <= chanceOfPowerUpL) {
		var powerUp = choose(o_nuke, o_sheriff_badge, o_tombstone);
		return instance_create_layer(x, y, "Instances", powerUp);
	}
	
	if (item > chanceOfPowerUpL && item <= chanceOf5CoinOrLife) {
		var powerUp = choose(o_five_coin, o_five_coin, o_extra_life);
		return instance_create_layer(x, y, "Instances", powerUp);
	}
} else {
	return false;
}