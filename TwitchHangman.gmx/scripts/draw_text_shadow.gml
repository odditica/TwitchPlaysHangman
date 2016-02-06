///draw_text_shadow(x, y, string, alpha)
var xx = argument0;
var yy = argument1;
var str = argument2;
var alp = argument3;

draw_set_alpha(alp / 3);
draw_text(xx + 4, yy, str);
draw_set_alpha(alp);
draw_text(xx, yy, str);
draw_set_alpha(1); 
