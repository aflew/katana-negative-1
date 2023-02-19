/// @description checks if dash is up and changes sprite to match, also follows player

if o_sword_manage.can_dash {
	image_index = 0;
} else image_index = 1;

x = o_player.x - o_player.facing*6;
y = o_player.y - 6;
if (o_player.hsp != 0) {
	image_xscale = o_player.facing ;
}
