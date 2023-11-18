/// @description if in range, aim and shoot (owner must be set in instance code)
if (owner) {
	if (!instance_exists(owner)) {
		instance_destroy(); // if had owner at some point but not now
	} else {
		x = owner.x;
		y = owner.y+2;
		//owner.image_xscale = image_yscale;
	}
}

if (distance_to_object(o_player) < range) {
	fireDelay--;
	pointing = point_direction(x,y,o_player.x,o_player.y);
	if (fireDelay <= 0) {
		fire();
	} else if (fireDelay > maxDelay/5 && fireDelay < 3*maxDelay/4) {
		image_angle = point_direction(x,y,o_player.x,o_player.y);
		image_yscale = sign(cos(image_angle));
	}
}