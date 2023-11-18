/// @description fire gun
with(instance_create_layer(x,y,"player",o_enemy_bullet)) {
	pointing = other.image_angle;
	hsp = lengthdir_x(other.bulletSpeed,pointing);
	vsp = lengthdir_y(other.bulletSpeed,pointing);
	image_angle = pointing;
}
fireDelay = maxDelay;