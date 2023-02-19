/// @description player picks up sword
if pickupCD < 0 {
	with(o_sword_manage) {
		swordHeld = 1;
		playerSword = instance_create_layer(o_player.x,o_player.y,"sword",o_sword);
	}
	instance_destroy();
}
