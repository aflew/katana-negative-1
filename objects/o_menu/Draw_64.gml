/// @description draw menu

draw_set_font(menu_font);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++) {
	var offset = 2;
	var txt = menu[i];
	
	var col;
	if (menu_cursor == i) {
		//txt = string_insert("> ",txt,0);
		col = c_white;
	} else {
		col = c_gray;	
	}
	
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i*1.5));
	
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}