///@desc movement and animation
vsp = vsp + grv;
onFloor = place_meeting(x,y+1,o_wall);
hsp = hsp*hspdecay;
iframes--;
if abs(hsp) < 0.01 {
	hsp = 0;
}

calcCollision();

//animation
if (!onFloor) 
{
	sprite_index = s_enemy_air;
	image_speed = 0;
	if (sign(vsp)>0) 
	{
		image_index = 1;
	} else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = s_enemy;
	}
	else
	{
		sprite_index = s_enemy_run;
	}
}
//if (hsp != 0)
//{
//	facing = sign(hsp);
//	image_xscale = facing;
//}


