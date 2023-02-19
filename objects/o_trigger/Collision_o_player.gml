/// @description go to next room

with (o_player) {
	if instance_number(o_enemy) > 0 {
		
	}
	else if (hascontrol and instance_number(o_enemy) == 0) {
		hascontrol = false;
		slideTransition(TRANS_MODE.GOTO,other.target,transdir.LtoR)
	}
}
		
		
