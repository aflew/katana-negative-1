fluctuate++;
vsp = (vsp + 1/2*sin(fluctuate*pi/60))*vspdecay;
onFloor = place_meeting(x,y+1,o_wall);
hsp = hsp*hspdecay;
iframes--;
if abs(hsp) < 0.01 {
	hsp = 0;
}

calcCollision()

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


