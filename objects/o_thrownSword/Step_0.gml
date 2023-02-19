/// @description same code as dead body lol + pointing

pickupCD--;

if (done == 0) {
	vsp = min(vsp + grv,8);
	onFloor = place_meeting(x,y+1,o_wall);
	
	//animation
	image_angle = darctan2(-vsp,hsp)+160;

	//horz collide
	if (place_meeting(x+hsp,y,o_wall)) 
	{
		while (!place_meeting(x+sign(hsp),y,o_wall)) 
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x+hsp;

	//vert collide
	if (place_meeting(x,y+vsp,o_wall)) 
	{
		if (vsp > 0) {
			done = 1;
		}
		while (!place_meeting(x,y+sign(vsp),o_wall)) 
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
	
	grv = min(grv + 0.005,2);
}

