/// @description hsp and vsp must be set in creation code

if (active) {
	// player collision
	if (place_meeting(x+hsp,y+vsp,o_player)) 
	{
		with (o_player) {
			hitfrom = image_angle;
			event_user(0);
		}
		instance_destroy(self);
	}
	//horz collide
	if (place_meeting(x+hsp,y,o_wall)) 
	{
		while (!place_meeting(x+sign(hsp),y,o_wall)) 
		{
			x = x + sign(hsp);
		}
		active = false;
	}
	x = x+hsp;

	//vert collide
	if (place_meeting(x,y+vsp,o_wall)) 
	{
		while (!place_meeting(x,y+sign(vsp),o_wall)) 
		{
			y = y + sign(vsp);
		}
		active = false;
	}
	y = y + vsp;
}