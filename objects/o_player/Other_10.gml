/// @description die
with(instance_create_layer(x,y,"player",o_dead_player)) {
	hsp = random_range(1,3)*lengthdir_x(1,other.hitfrom);
	// alarm 0 resets the room
	alarm_set(0,100);
}

instance_destroy(o_sword);
with(instance_create_layer(x,y,"sword",o_thrownSword_dead)) {

}
instance_destroy(o_sword_manage);
instance_destroy(o_dashind);
instance_destroy(o_pointer);
instance_destroy(o_player);