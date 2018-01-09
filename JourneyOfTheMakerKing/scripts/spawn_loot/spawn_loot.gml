/// @description Control Loot Spawn
/// @param % chance
var chanceToSpawn = argument0;
var chanceOfCoin = .50;
var chanceOfPowerUpS = .30;
var chanceOfPowerUpL = .15;
var chanceOf5Coin = .05;

randomize();

if (random(1) < chanceToSpawn) {
	randomize();
	var item = random(1);
	
	//TODO: generate items based on percentages
}