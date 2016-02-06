///getTag(tag, string)
///Finds and returns a value of an IRCv3 tag

var sub, tag, temp, final;
tag = argument0;
sub = argument1;
final = "";
temp = string_copy(sub, string_pos("=", string_copy(sub, string_pos(tag + "=", sub), string_length(sub))) + string_pos(tag + "=", sub), string_length(sub) - string_pos(tag + "=", sub));
for (var i = 1; i < string_length(temp) - 1; i++){
    if (string_char_at(temp, i) = ';'){
       break;   
    }
    final += string_char_at(temp, i);
}

return final;
