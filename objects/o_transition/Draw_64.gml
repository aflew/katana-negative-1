/// @description draws black bars

if mode != TRANS_MODE.OFF {
	switch(dir) {
		case transdir.mid: {
			draw_set_color(c_black);
			draw_rectangle(0,0,w,percent*h/2,false);
			draw_rectangle(0,h,w,h-(percent*h/2),false);
			break;
		}
		case transdir.LtoR: {
			draw_set_color(c_black);
			draw_rectangle(0,0,percent*w,h,false);
			break;
		}
		case transdir.UtoD: {
			draw_set_color(c_black);
			draw_rectangle(0,0,w,percent*h,false);
			break;
		}
	}
}

//draw_set_color(c_white);
//draw_text(50,50,string(percent));
