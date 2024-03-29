/// @description setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width/2;
menu_y = gui_height - gui_margin;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "Start"
menu[1] = "Level Select";
menu[0] = "Quit";

menu_cursor = 2;
menu_items = array_length(menu);

function doThing() {
	switch (menu_committed) {
		case 2: default: slideTransition(TRANS_MODE.NEXT); break;
		case 0: game_end(); break;
	}
}