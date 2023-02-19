/// @description gives dash back when player collides

if (cooldown < 0) && (o_sword_manage.can_dash == 0) {
	with (o_sword_manage) {
		can_dash = 1;
	}
	cooldown = 180;
	image_index = 1;
}


