/// @description initialize vars
hsp = 0;
hspdecay = 0.8;
vsp = 0;
grv = 0.25;
walksp = 4;
facing = 1;
hascontrol = 1;

controller = 0;
key_attack = 0;
key_dash = 0;
key_throw = 0;

hitfrom = 0;

function die() {
	with(instance_create_layer(x,y,"player",o_dead_player)) {
		hsp = random_range(1,3)*lengthdir_x(1,other.hitfrom);
		alarm_set(0,100);
	}
	instance_destroy(o_sword);
	with(instance_create_layer(x,y,"sword",o_thrownSword_dead)) {

	}
	instance_destroy(o_sword_manage);
	instance_destroy(o_dashind);
	instance_destroy(o_pointer);
	instance_destroy(o_player);
}