/// @description copied from oslice
if !done {
	with (other) {
		if (iframes < 0) {
			hp = hp - 2;
			flash = 3;
			iframes = 6;
		}
	}
	knockback(-2,-2,other,0);
	other.hitfrom = image_angle+180;

	knockback(0,0,o_thrownSword,1,2);

	o_sword_manage.can_dash = 1;
}
