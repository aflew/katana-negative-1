/// @description decreases cooldown and checks for attacks + checks if player has touched ground for dash

with (o_player) {	
	if place_meeting(x,y+1,o_wall) && (vsp >= 0)
	{
		other.can_dash = 1;
	}
}

attack_cooldown--;
dash_cd--;

//dash
if (o_player.key_dash) && (dash_cd < 0) && can_dash {
		attack_cooldown = 3;
		dash_cd = 5;
		can_dash = 0;
		instance_create_layer(o_player.x,o_player.y+4,"sword",o_dash)
		o_player.sprite_index = s_player_dash;
}

//sword actions
if swordHeld {
	//basic sword attack
	if (o_player.key_attack) && (attack_cooldown < 0) {
		attack_cooldown = 5;
		instance_create_layer(x+sign(playerSword.image_xscale)*10,y,"sword",o_slice);
		playerSword.image_index = 2;
	}
	
	//sword throw
	if (o_player.key_throw) {
		attack_cooldown = 27;
		swordHeld = 0;
		instance_destroy(playerSword);
		instance_create_layer(o_player.x,o_player.y,"sword",o_thrownSword)
	}
}

//no sword actions
else {
	//retrieve sword
	if o_player.key_throw && attack_cooldown < 0 {
		with(o_thrownSword) {
			recalldir = point_direction(x,y,o_player.x,o_player.y+3)
			done = 0;
			y = y-5;
			hsp = lengthdir_x(12,recalldir);
			vsp = lengthdir_y(12,recalldir);
			other.attack_cooldown = 30;
			grv = 0;
			recall = true;
		}
	}
}
