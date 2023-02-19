fluctuate++;
vsp = (vsp + 1/2*sin(fluctuate*pi/60))*vspdecay;
onFloor = place_meeting(x,y+1,o_wall);
hsp = hsp*hspdecay;
iframes--;
if abs(hsp) < 0.01 {
	hsp = 0;
}

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
	while (!place_meeting(x,y+sign(vsp),o_wall)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animation
if vsp > 0.4 {
	image_index = 0
}
else if vsp < -0.4 {
	image_index = 2
}
else {
	image_index = 1
}

if (hsp != 0)
{
	facing = sign(hsp);
	image_xscale = facing;
}


