//creates a knockback effect by adding to/replacing hsp and vsp
//uses the orientation of the object that calls the script to determine direction of knockback,
//the knockback is applied to the object specified in the function
//if mustAir is true, vertical knockback is only applied when in the air
function knockback(xval,yval,obj,mustAir = 1,conserveMomentum = 0){
	with (obj) {
		hsp = sign(hsp)*sqrt(abs(hsp))*conserveMomentum + lengthdir_x(xval,other.image_angle);
		if (!onFloor) || (mustAir == 0) {
			vsp = sign(vsp)*sqrt(abs(vsp))*conserveMomentum + lengthdir_y(yval,other.image_angle);
		}
		calcCollision();
	}
}