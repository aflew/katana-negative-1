/// @description angle
if (!instance_exists(target)) {
	instance_destroy();
} else {
	image_angle = point_direction(x,y,target.x,target.y);
	x = o_player.x;
	y = o_player.y;
}