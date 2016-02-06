///bottomMessage(string)
///Shows a message at the bottom of the screen

var a = instance_create(0, 0, objMessage);
a.pointString = "";
a.text = argument0;
ds_list_add(global.messageDraw, a);
