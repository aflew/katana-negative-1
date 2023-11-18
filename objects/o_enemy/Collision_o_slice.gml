/// @description take damage + knockback + reset dash
if (iframes < 0) {
	hp = hp - 1;
	flash = 3;
	iframes = 6;
	with(other) {
		knockback(2,2,other,0);
		other.hitfrom = image_angle;

		knockback(-1,-4,o_player,1,1);

		o_sword_manage.can_dash = 1;	
	}
}	