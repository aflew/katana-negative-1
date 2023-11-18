//get input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) ;
key_jump = keyboard_check_pressed(vk_space);


if (key_left) || (key_right) || (key_jump) {
	controller = 0;
}

if (abs(gamepad_axis_value(4,gp_axislh)) > 0.2) {
	key_left = abs(min(gamepad_axis_value(4,gp_axislh),0));
	key_right = max(gamepad_axis_value(4,gp_axislh),0);
	controller = 1;
}
if (gamepad_button_check_pressed(4,gp_face1)) {
	key_jump = 1;
	controller = 1;
}

if (controller == 0) {
	pointing = point_direction(x,y,mouse_x,mouse_y);
}
else {
	var controllerh = gamepad_axis_value(4,gp_axislh);
	var controllerv = gamepad_axis_value(4,gp_axislv);
	if (abs(controllerh) > 0.2 || abs(controllerv) > 0.2) {
		controllerangle = point_direction(0,0,controllerh,controllerv);
		pointing = controllerangle;
	}
}

key_dash = mouse_check_button_pressed(mb_right) || gamepad_button_check_pressed(4,gp_face2);
key_attack = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(4,gp_face3);
key_throw = keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(4,gp_face4);

if (!frozen) {
	//calc movement
	if (hascontrol) {
		var move = key_right - key_left;
	
		vsp = min(vsp + grv,7);
	
		onFloor = place_meeting(x,y+1,o_wall);

		if (abs(hsp) <= walksp) && (move != 0) {
			hsp = move*walksp;
		}
	
		hsp = hsp*hspdecay;
	
		if (onFloor) && (key_jump)
		{
			vsp = -7;
		}
	
		calcCollision();
	}

	//animation
	if (!onFloor)	//air
	{
		sprite_index = s_player_air;
		image_speed = 0;
		if (sign(vsp) > 0) 
		{
			image_index = 1;
		} else image_index = 0;
	}

	else	// ground
	{
		image_speed = hsp/2;
		if (abs(hsp) < 0.1)
		{
			sprite_index = s_player;
		}
		else
		{
			sprite_index = s_player_run;
		}
	}
	if (hsp != 0)
	{
		facing = sign(hsp);
		image_xscale = facing;
	}
}

