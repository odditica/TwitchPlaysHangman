///draw_text_shadow_w(x, y, string, alpha, w)

var xx = argument0;
var yy = argument1;
var str = argument2;
var alp = argument3;
var w = argument4; 
//shader_set(shaderScribbly);
//shader_set_uniform_f(shader_get_uniform(shaderScribbly, "time"), objControl.time);
draw_set_alpha(alp / 3);
draw_text_ext(xx + 4, yy, str, 16, w);
draw_set_alpha(alp);
draw_text_ext(xx, yy, str, 16, w);
draw_set_alpha(1); 
//shader_reset();
