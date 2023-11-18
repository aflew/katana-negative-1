/// @description control

if (menu_control) {
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
		menu_cursor++;
		if (menu_cursor >= menu_items)
			menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
		menu_cursor--;
		if (menu_cursor < 0)
			menu_cursor = menu_items-1;
	}
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E"))) {
		menu_committed = menu_cursor;
		menu_control = false;
		doThing();
	}
}