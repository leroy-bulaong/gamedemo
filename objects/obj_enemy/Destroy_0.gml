/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, "Instances",obj_explosion);
audio_play_sound(snd_enemykill,5,false);

if(drop == 3){
	instance_create_layer(x, y, "Instances",obj_pickup);
	drop = 0;
}
if(drop == 4){
	instance_create_layer(x, y, "Instances",obj_upgrade_pickup);
	drop = 0;
}

if(instance_exists(obj_ship)){
	obj_ship.player_score = obj_ship.player_score + 10;
	obj_ship.kill_count = obj_ship.kill_count + 1;
	if(obj_ship.kill_count < 10)
	{
		instance_create_layer(irandom_range(0,1024), irandom_range(0,1700), "Instances",obj_enemy);
	}
}