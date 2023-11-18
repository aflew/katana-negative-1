/// @description draws the number of enemies alive
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(font1)
draw_text(51,75,"Enemies Remaining: " + string(instance_number(o_enemy)));
