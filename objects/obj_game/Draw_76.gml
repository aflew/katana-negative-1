/// @description check for pause
if (keyboard_check_pressed(vk_escape)) {
	paused = !paused;
	
	if (paused) {
		instance_deactivate_all(true);	
	} else {
		instance_activate_all();
	}
}