/// @description Insert description here
/***
if (other.iframes < 0) {
	with (other) {
		hp = hp - 1;
		flash = 3;
		iframes = 6;
	}
	knockback(2,2,other,0);
	other.hitfrom = image_angle;

	knockback(-1,-4,o_player,1,1);

	o_sword_manage.can_dash = 1;
}
