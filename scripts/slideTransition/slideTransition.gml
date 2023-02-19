///@desc slideTransition(mode,targetroom,direction)
//newMode sets transition mode between next, restart, and goto
//targetroom sets target room when using goto mode

function slideTransition(newMode,targetroom = room,newDir = transdir.mid){
	with(o_transition){
		mode = newMode;
		target = targetroom;
		dir = newDir;
	}
}