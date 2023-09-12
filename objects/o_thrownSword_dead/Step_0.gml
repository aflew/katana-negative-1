/// @description same code as dead body lol + pointing

pickupCD--;

if (done == 0) {
	vsp = min(vsp + grv,8);
	onFloor = place_meeting(x,y+1,o_wall);
	
	//animation
	image_angle = darctan2(-vsp,hsp)+160;

	if !recall {
		calcCollision();
	} else {
		if directionrecalc >= 2 {
			recalldir = point_direction(x,y,o_player.x,o_player.y+3)
			hsp = lengthdir_x(12*recallstrength,recalldir);
			vsp = lengthdir_y(12*recallstrength,recalldir);
			recallstrength = recallstrength*1.05
			directionrecalc = -1;
		}
		x += hsp;
		y += vsp;
		directionrecalc++;
	}
	
	grv = min(grv + 0.005,2);
}

