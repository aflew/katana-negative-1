/// @description Insert description here
maxDelay = 100;
fireDelay = 100;
range = 200;
bulletSpeed = 5;
owner = false;
pointing = 0;

fire = function() {
	 with(instance_create_layer(x,y,"player",o_enemy_bullet)) {
		 pointing = other.image_angle;
		 hsp = lengthdir_x(other.bulletSpeed,pointing);
		 vsp = lengthdir_y(other.bulletSpeed,pointing);
		 image_angle = pointing;
	 }
	 fireDelay = maxDelay;
}