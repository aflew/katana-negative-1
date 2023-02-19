
// moves player for dash and changes to dash sprite
with (o_player) {
	calcCollision();
	sprite_index = s_player_dash;
}
//makes dash sprite connect original position to current
dashdir = point_direction(orig_x,orig_y,o_player.x,o_player.y);
image_xscale = point_distance(orig_x,orig_y,o_player.x,o_player.y)/128;
image_angle = dashdir;



