// moves the object without moving through walls
//hsp and vsp are horizontal and vertical speed
function calcCollision(){
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

}

