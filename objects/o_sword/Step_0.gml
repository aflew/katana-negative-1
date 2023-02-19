/// @description moves position if sword is held

if o_sword_manage.swordHeld {
	x = o_player.x;
	y = o_player.y + 10;
	if (o_player.hsp != 0) {
		image_xscale = o_player.facing ;
	}
}


